echo
echo Setup Dvorak at next screen. (3s)
sleep 3

sudo dpkg-reconfigure keyboard-configuration
sudo dpkg-reconfigure console-setup
echo
echo
echo Dvorak should setup OK.
echo Sleep 5 seconds to test now.
echo
echo
echo > 
sleep 5

echo
echo Wifi config now
sleep 1
sudo nano /etc/netplan/50-cloud-init.yaml
sudo netplan --debug try
sudo netplan --debug generate
sudo netplan --debug apply
echo 
echo ########################
echo # WiFi may OK now.     #
echo # "sudo reboot" later. #
echo ########################

echo
echo
echo XMRIG
echo install now
echo
echo
sleep 1
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)