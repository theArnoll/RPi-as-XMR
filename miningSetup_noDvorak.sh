echo 
echo 
echo Download and install
echo XMRIG in current folder/dictionary
echo in 3 seconds
echo 
echo 
i=3
for i in $(seq $i -1 1)
do
        echo "$i"
        sleep 1
done
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
