#!/bin/sh                                                                       
PATH=/opt/sbin:/opt/bin:/usr/sbin:/usr/bin:/sbin:/bin                                                                       
let 'flag=0'                                                                    
DATE=`date +%Y-%m-%d-%H:%M:%S`                                                  
#HS=`cat /tmp/hosts | grep '127.0.0.1	localhost' | head -1 | cut -d : -f 2`           
#if [ "${HS}" != "127.0.0.1	localhost" ]                                                       
#then                                                                            
  wget -q https://github.com/OHLIA/myhosts/raw/master/Go-hosts -O /root/1quicklink/myhosts/1go.hosts --no-check-certificate
  wget -q https://raw.githubusercontent.com/vokins/yhosts/master/hosts -O /root/1quicklink/myhosts/2y.hosts --no-check-certificate
  wget -q https://github.com/OHLIA/myhosts/raw/master/other-hosts -O /root/1quicklink/myhosts/3other.hosts --no-check-certificate
  cat /root/1quicklink/myhosts/*.hosts > /root/1quicklink/myhosts/hosts
  cp /root/1quicklink/myhosts/hosts /tmp/hosts
  killall dnsmasq
  killall dnsmasq                              
  let 'flag=flag+1'                                                             
#fi
if [ ${flag} != 0 ]                                                             
then                                                                            
  echo $DATE hosts renew  >> /root/1quicklink/myhosts/hosts.log                               
fi
