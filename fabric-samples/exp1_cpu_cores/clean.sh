# Stop containers
docker stop $(docker ps -a | grep 'peer'| awk '{print $1 }')
docker stop $(docker ps -a | grep 'orderer'| awk '{print $1 }')
docker stop $(docker ps -a | grep 'cli'| awk '{print $1 }')

# Remover containers
docker rm -f $(docker ps -a | grep 'peer'| awk '{print $1 }')
docker rm -f $(docker ps -a | grep 'orderer'| awk '{print $1 }')
docker rm -f $(docker ps -a | grep 'cli'| awk '{print $1 }')

# Remove volume
echo y | docker volume prune

# Remove config files
echo "T716rrs722" | sudo -S -k rm -rf $HOME/fabric-samples/demo-first/channel-artifacts/*
echo "T716rrs722" | sudo -S -k rm -rf $HOME/fabric-samples/demo-first/crypto-config

# Remove image
docker rmi $(docker images -a | grep 'mycc'| awk '{print $1 }')

# Remove nodejs procedures
echo "T716rrs722" | sudo -S kill -9 `pidof node`
echo "T716rrs722" | sudo -S kill -9 `pidof nodejs`
echo "T716rrs722" | sudo -S kill -9 `pidof peer`
echo "T716rrs722" | sudo -S kill -9 `pidof dockerd`

# Remove result files
echo "T716rrs722" | sudo -S -k rm -rf $HOME/fabric-samples/demo-first/workload/result/benchlog
echo "T716rrs722" | sudo -S -k rm -rf $HOME/fabric-samples/demo-first/workload/result/peerlog
echo "T716rrs722" | sudo -S -k rm -rf $HOME/fabric-samples/demo-first/workload/result/ordererlog
