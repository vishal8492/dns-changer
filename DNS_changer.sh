echo "1:Restore To Defaults
2:Untelly DNS
3:Tunlr DNS
4:Google DNS
5:Open DNS"
read pattern;
echo PASSWD | sudo -S chattr -i /etc/resolv.conf
case $pattern in
1) 
sudo sh -c "echo  domain local.lan search local.lan nameserver 192.168.1.1 >  /etc/resolv.conf"
;;
2) sudo sh -c "echo nameserver 122.248.238.233 nameserver 14.136.236.187 >  /etc/resolv.conf"
;;
3) sudo sh -c "echo nameserver 184.82.222.5 nameserver 199.167.30.144 >  /etc/resolv.conf"
;;
4)sudo sh -c "echo  nameserver 8.8.8.8 nameserver 8.8.8.4  >  /etc/resolv.conf"
;;
5) sudo sh -c "echo  nameserver 208.67.222.222 nameserver 208.67.220.220  >  /etc/resolv.conf"
;;
esac
sudo chattr +i /etc/resolv.conf
echo "
Rebooting network"
sudo /etc/rc.d/networkmanager restart
echo "OK done"