sleep 15
git clone https://github.com/mlcommons/medperf
cd medperf/server
ls
pip install -r requirements.txt
pip install -r test-requirements.txt
sh setup-dev-server.sh