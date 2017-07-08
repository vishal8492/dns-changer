source ~/.profile                                                                                                                                                                                                 
case $pattern in
1)
echo "Default Set"
;;
2)
echo "Untelly DNS set"
;;
3)
echo "Tunlr DNS set"
;;
4)
echo "Google DNS set"
;;
5)
echo "Open DNS set"
;;
esac
echo "1:Restore To Defaults
2:Untelly DNS
3:Tunlr DNS
4:Google DNS
5:Open DNS
6:Recommended"
read pattern;
echo -e "vishal" | sudo -S chattr -i /etc/resolv.conf
case $pattern in
1) 
sudo sh -c "echo  nameserver 192.168.1.1 >  /etc/resolv.conf"
echo  "export pattern=1" > ~/.profile
;;
2) sudo sh -c "echo nameserver 122.248.238.233 nameserver 14.136.236.187 >  /etc/resolv.conf"
echo  "export pattern=2" > ~/.profile
;;
3) sudo sh -c "echo nameserver 192.95.16.109 nameserver 142.54.177.158 >  /etc/resolv.conf"
echo  "export pattern=3" > ~/.profile
;;
4)sudo sh -c "echo  nameserver 8.8.8.8 nameserver 8.8.8.4  >  /etc/resolv.conf"
echo  "export pattern=4" > ~/.profile
;;
5) sudo sh -c "echo  nameserver 208.67.222.222  nameserver 208.67.220.220  >  /etc/resolv.conf"
echo  "export pattern=5" > ~/.profile
;;
6) sudo sh -c "echo  nameserver 202.148.202.3 nameserver 192.168.1.1  nameserver 203.124.230.12 >  /etc/resolv.conf"
echo  "export pattern=5" > ~/.profile
;;
esac
sudo chattr -i /etc/resolv.conf
echo "
Rebooting network"
#sudo /etc/init.d/network-manager restart
#sudo systemctl restart NetworkManager 
sudo systemctl restart  dhcpcd
echo "OK done"
