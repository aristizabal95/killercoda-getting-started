echo "Retrieving the setup script"
wget -O setup-medperf.sh https://shorturl.at/cfOS2  > /dev/null 2>&1
chmod a+x setup-medperf.sh
bash setup-medperf.sh
cd medperf
medperf profile activate test