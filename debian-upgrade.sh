#!/bin/bash
apt update -y &&
    apt upgrade -y &&
    cp /etc/apt/sources.list /etc/apt/sources.list.bak &&
    cat /dev/null >/etc/apt/sources.list &&
    echo -e "deb http://deb.debian.org/debian bullseye main contrib non-free" >/etc/apt/sources.list &&
    echo -e "deb http://deb.debian.org/debian bullseye-updates main contrib non-free" >>/etc/apt/sources.list &&
    echo -e "deb http://security.debian.org/debian-security bullseye-security main" >>/etc/apt/sources.list &&
    echo -e "deb http://ftp.debian.org/debian bullseye-backports main contrib non-free" >>/etc/apt/sources.list &&
    apt update -y &&
    apt upgrade -y
