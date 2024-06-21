echo 
echo "Setup Dvorak at next screen. (3s)"
echo 
i=3
for i in $(seq $i -1 1)
do
        echo "$i"
        sleep 1
done

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
echo
echo XMRIG install in 
echo current folder/dictionary now
echo
echo
sleep 1
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
