#!/bin/bash
echo -e "nameserver 192.168.0.2 \nsearch framgia.org" > /etc/resolv.conf
dpkg -i likewise-open*.deb
echo -e '%FRAMGIA\\\domain^users ALL=(ALL) ALL' >> /etc/sudoers
echo -e "[SeatDefaults] \ngreeter-show-manual-login=true" >> /etc/lightdm/lightdm.conf
echo "emFxMTJ3c3hAMTIzCg==" | openssl enc -base64 -d | domainjoin-cli join framgia.com Administrator

// Author: Han Van Hiep
// Update time: 2015-10-20
