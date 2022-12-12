# concurrently node invoke.js tasks_per_batch delay_per_batch rounds bytes_per_transaction

# variables
delay=4000
payloadbyte=1

# client 1
ssh client1.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client1.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client1.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client1.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client1.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client1.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client1.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client1.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &

# client 2
ssh client2.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; node --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client2.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; node --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client2.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; node --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client2.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; node --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client2.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; node --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client2.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; node --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client2.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; node --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client2.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; node --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &

# client 3
ssh client3.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client3.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client3.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client3.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client3.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client3.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client3.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client3.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &

# client 4
ssh client4.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client4.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client4.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client4.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client4.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client4.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client4.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client4.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &

# client 5
ssh client5.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client5.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client5.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client5.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client5.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client5.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client5.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client5.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &

# client 6
ssh client6.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client6.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client6.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client6.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client6.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client6.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client6.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client6.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &

# client 7
ssh client7.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client7.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client7.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client7.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client7.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client7.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client7.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &
ssh client7.peer "cd $HOME/fabric-samples/demo-first/workload/sdk-peer0-org1; nodejs --unhandled-rejections=strict invoke.js 30 $delay 10 $payloadbyte" &

