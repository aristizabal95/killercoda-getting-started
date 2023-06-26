echo "Retrieving the setup script"
wget -O setup-medperf.sh https://shorturl.at/cdgkV  > /dev/null 2>&1
chmod a+x setup-medperf.sh
bash setup-medperf.sh
cd medperf
medperf profile activate test
cat << EOF
































  __  __          _                  __   _____      _             _       _ 
 |  \/  | ___  __| |_ __   ___ _ __ / _| |_   _|   _| |_ ___  _ __(_) __ _| |
 | |\/| |/ _ \/ _` | '_ \ / _ \ '__| |_    | || | | | __/ _ \| '__| |/ _` | |
 | |  | |  __/ (_| | |_) |  __/ |  |  _|   | || |_| | || (_) | |  | | (_| | |
 |_|  |_|\___|\__,_| .__/ \___|_|  |_|     |_| \__,_|\__\___/|_|  |_|\__,_|_|
                   |_|                                                       

EOF