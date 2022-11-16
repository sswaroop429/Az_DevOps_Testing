variable "LINUX_VM_VALUES"
{
type			=	map(object({
vm_name			=	string
rg_name			=	string
hostname		=	string
os_disk_name		=	string
nic_name		=	string
location		=	string
vm_size			= 	string
vm_username		=	string
storage_account_type	=	string
os_image		=	string
os_caching		=	string
zone			=	number
}))
default			= 	{
"vmname01"		=	{
vm_name			=	"vmname01"
rg_name			=	"vm-rg-01"
hostname		=	"vmname01"
os_disk_name		=	"vmname01-os"
nic_name		=	"vmname01-nic-01"
location		=	"South India"
vm_size			=	"Standard_E2ds_v4"
vm_username		=	"azureuser"
storage_account_type	=	"Standard_LRS"
os_image		=	"https://csg1003200226bcb328.blob.core.windows.net/azvhdtest/azvhdtest.vhd"
os_caching		= 	"ReadWrite"
zone			=	1
}
}
}