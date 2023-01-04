ssh orderer.example.com "cd $HOME/fabric-samples/demo-first/workload/result; docker logs --since 20m \$(docker ps -a | grep 'orderer'| awk '{print \$1 }') >& ordererlog; scp ordererlog $USER@peer0.org1.example.com:$HOME/fabric-samples/demo-first/workload/result/"

python readthroughput_p2.py
