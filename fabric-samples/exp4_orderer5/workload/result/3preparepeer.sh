ssh peer0.org1.example.com "cd $HOME/fabric-samples/demo-first/workload/result; docker logs --since 20m \$(docker ps -a | grep 'peer node start'| awk '{print \$1 }') >& peerlog"
