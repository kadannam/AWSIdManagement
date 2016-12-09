#!/usr/bin/env bash
upgrade=$(sshd -v 2>&1 | grep -c  OpenSSH_5)
if [ ${upgrade} -eq 1 ]; then
  exit
else
  cd /tmp
  /usr/bin/wget http://mirror.aarnet.edu.au/pub/OpenBSD/OpenSSH/portable/openssh-6.6p1.tar.gz
  tar -xvf openssh-6.6p1.tar.gz    
  cd openssh-6.6p1    
  echo "configuring ssh"
  ./configure --prefix=/usr --sysconfdir=/etc/ssh --with-md5-passwords --with-privsep-path=/var/lib/sshd     
  echo "make ssh"
  make 
  echo "make install ssh"
  make install
  cd /
  rm -rf /tmp/openssh-6*
fi
