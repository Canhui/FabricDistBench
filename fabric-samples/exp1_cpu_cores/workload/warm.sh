# concurrently node invoke.js tasks_per_batch delay_per_batch rounds bytes_per_transaction

# client 1
ssh client1.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs invoke.js 30 320 1 1" &

# client 2
ssh client2.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; node invoke.js 30 320 1 1" &

# client 3
ssh client3.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs invoke.js 30 320 1 1" &

# client 4
ssh client4.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs invoke.js 30 320 1 1" &

# client 5
ssh client5.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs invoke.js 30 320 1 1" &

# client 6
ssh client6.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs invoke.js 30 320 1 1" &

# client 7
ssh client7.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs invoke.js 30 320 1 1" &
