mentohust-openwrt-scripts
=========================

Mentohust scripts on Openwrt.


## mentohust (binary file, not provided in this repo.)
    description:    Mentohust binary file.
    localtion:      /usr/local/sbin/mentohust

## mentohust
    description:    Openwrt init script.
    location:       /etc/init.d/mentohust
    configuration:  {USERNAME} => Ruijie Username
                    {PASSWORD} => Ruijie Password
                    {DHCPTYPE} => Ruijie DHCP Type
                    -v -a -d options should be chosen as your environment.

## dhcp-afterwards.sh
    description:    Mentohust DHCP script for rebind IP after authentication.
    localtion:      /usr/local/lib/mentohust/dhcp-afterwards.sh
    configuration:  {REAL_IP} => Real IP after authentication, obtained elsewhere. Can be incomplete. e.g. '172.16.'
