#!/bin/bash
chroot_name=$1
default_chroot=cos_pi07

if [ -z "$chroot_name" ]; then
    chroot_name=$default_chroot
fi

echo -e schroot is $chroot_name "\n"  | cowsay -f tux
echo ----------------------

CHROOT_PATH='/srv/schroot/home/mreubino/mreubino-'$chroot_name



function print_ver(){
   echo $($get_dir $1 | awk '{print $9}')
}

foundation=$CHROOT_PATH'/usr/include/nsg-foundation'
docsisutils=$CHROOT_PATH'/usr/include/libcos-docsisutils'
libcosmgp=$CHROOT_PATH'/usr/include/libcosmgp'
hal=$CHROOT_PATH'/usr/include/ulc-hal'
libcosmdp=$CHROOT_PATH'/usr/include/libcosmdp'
scheduler=$CHROOT_PATH'/usr/include/ulc-scheduler'
coscfg=$CHROOT_PATH'/usr/include/cosm-cfg-api'
uspp=$CHROOT_PATH'/usr/include/ulc-uspp-dpdk'
sup=$CHROOT_PATH'/usr/include/libnsgsup'


get_dir='ls -l '



echo Hal: $(print_ver $hal)
echo foundation: $(print_ver $foundation)
echo docsisutils: $(print_ver $docsisutils)
echo libcosmgp: $(print_ver $libcosmgp)
echo libcosmdp: $(print_ver $libcosmdp)
echo scheduler: $(print_ver $scheduler)
echo coscfg: $(print_ver $coscfg)
echo uspp: $(print_ver $uspp)
echo sup: $(print_ver $sup)
 

