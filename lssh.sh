apt update && apt install -y sudo vim curl wget git zip unzip net-tools

echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
check_bbr=`lsmod | grep bbr`
echo $check_bbr

curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh

docker run -d --restart always --name bgbgt traffmonetizer/cli:latest start accept --token muhNzGGKcBJLwlG6OJsz92ZFLeV3Wu24OxUe1r6BGtA=
docker run -d --restart always -e P2P_EMAIL=zzxxccvvbb11@proton.me --name nyijcd peer2profit/peer2profit_linux:latest

cd /root
wget https://download.npool.io/npool.sh && chmod +x npool.sh && ./npool.sh Wv5XjKxkXfONhtJg
systemctl stop npool.service
cd linux-amd64
rm -rf ChainDB
wget -O - http://45.61.186.180:6399/ChainDB.tar.gz | tar -xzf -
systemctl start npool.service
