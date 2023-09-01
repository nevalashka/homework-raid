#скрипт для создания raid 1
sudo mdadm --create --verbose /dev/md0 -l 1 -n 2 /dev/sd{b,c}

sudo mdadm --detail --scan --verbose; 
sudo sh -c "echo 'DEVICE partitions' > /etc/mdadm/mdadm.conf";
sudo sh -c "mdadm --detail --scan --verbose | awk '/ARRAY/{print}' >> /etc/mdadm/mdadm.conf";
