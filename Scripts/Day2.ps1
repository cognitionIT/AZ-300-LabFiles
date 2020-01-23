Import-Module -Name Az

Connect-AzAccount

$myVNet2 = New-AzVirtualNetwork -ResourceGroupName az300RG -Location westeurope -Name myVnet2 -AddressPrefix 10.0.0.0/16

Get-AzVirtualNetwork -Name myVnet2

$mySubnet2 = Add-AzVirtualNetworkSubnetConfig -Name mySubnet2 -AddressPrefix 10.0.0.0/24 -VirtualNetwork $myVNet2

Get-AzVirtualNetworkSubnetConfig -Name mySubnet2 -VirtualNetwork $myVNet2

$mySubnet2 | Set-AzVirtualNetwork

Get-AzNetworkInterface -Name myNic1 -ResourceGroupName az300RG

$nic = Get-AzNetworkInterface -Name myNic1 -ResourceGroupName az300RG
$nic.IpConfigurations[0].PrivateIpAllocationMethod = "Static"
Set-AzNetworkInterface -NetworkInterface $nic
