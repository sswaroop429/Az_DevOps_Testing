# Create Azure Linux Virtual Machines

resource "azurerm_linux_virtual_machine" "lza-linuxvm"
{
for_each				=	var.LINUX_VM_VALUES
name					=	each.value.vm_name
computer_name				=	each.value.hostname
resource_group_name			=	each.value.rg_name
location				=	each.value.location
size					=	each.value.vm_size
admin_username				=	each.value.vm_username
network_interface_ids			=	[lookup(var.NIC_ID, each.value.nic_name, "what?")]
admin_password				=	var.VM_PASSWORD
disable_password_authentication	=	false
os_disk
{
name					=	"${each.value.os_disk_name}"
caching					=	each.value.os_caching
storage_account_type			=	each.value.storage_account_type
}
source_image_id			=	each.value.os_image
zone					=	each.value.zone
boot_diagnostics
{
storage_account_uri			=	var.STG_BLOB_ENDPOINT
}
lifecycle
{
prevent_destroy			=	true
}
tags					=	var.tags
}