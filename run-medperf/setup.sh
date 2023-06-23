#!/bin/bash
echo -ne '                        (0%)  Getting medperf   \r'
git clone https://github.com/mlcommons/medperf > /dev/null 2>&1
cd medperf
echo -ne '####                    (17%) Installing medperf\r'
pip install -e cli > /dev/null 2>&1
echo -ne '########                (33%) Waiting on server \r'

work_done=false
until $work_done; do
   wget https://localhost:8000 > /dev/null 2>&1
   if [[ $? -eq 5 ]]
   then
      work_done=true
   fi
   i=$((i+1))
done

echo -ne '############            (50%) Seeding server    \r'
cd server
python seed.py --cert=cert.crt > /dev/null 2>&1

echo -ne '################        (67%) Done!             \r'
