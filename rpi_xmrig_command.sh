sudo chmod -R 777 "/sys/class/leds/led0/"
sudo echo none > "/sys/class/leds/led0/trigger"
sudo echo 1 > "/sys/class/leds/led0/brightness"
sleep 1
sudo echo 0 > "/sys/class/leds/led0/brightness"

sudo ~/xmrig/build/xmrig -o stratum+tcp://rx.unmineable.com:3333 -k -a rx -u [yourCoin]:[yourAdd].[minerName]#[refferalCode] --http-port=60070

sudo echo 1 > "/sys/class/leds/led0/brightness"
sleep 1
sudo echo 0 > "/sys/class/leds/led0/brightness"
sudo echo mmc0 > "/sys/class/leds/led0/trigger"
