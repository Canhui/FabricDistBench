#### Abstract

**About the Experiments:** Study the impacts of the number of CPU cores on an endorsing peer in the execute phase

**About Source Code Location:** $HOME/fabric-samples/exp1_cpu_cores 

**About Transaction Arrival Rate:** Set a specific latency for each transaction to achieve a specific transaction arrival rate

**About Experiment Settings of Hyperledger Fabric Service:** 1 orderer, 1 peer

**About Network Bandwidth Monitor:** ifstat

**About Memory Usage Monitor:** htop



#### Exp1: 1 cpu core 

Modify "peer0-org1.yaml" in the peer side as follows,

```shell
cpuset: "0"
```



Do experiments as follows,

```shell
# ---Do Experiments--------------------------------------------------------
# Step1.1: on the peer 
$ cd $HOME/fabric-samples/demo-first/workload
$ ./ssh.sh > result/benchlog

# Step1.2: on the peer at the same time
$ cd $HOME/fabric-samples/demo-first/workload/result
$ ./execute.sh // observe transaction throughput and latency

# Step2: on the client side
$ cd $HOME/fabric-samples/demo-first/workload
$ ./clcmem.sh

# ---Monitor--------------------------------------------------------
# Step1.3: on the peer, monitor the network throughput
$ ifstat

# Step1.4: on the peer, monitor the memory usage
$ htop
```



Transaction arrival rate of the execute phase is controlled in the client side as follows,

```shell
#----------------------c=1------------------------------------#
# 8000s - 214 tps transaction arrival rate
# 7000s - 244 tps transaction arrival rate
# 6000s - 312 tps transaction arrival rate
# 5000s - 352 tps transaction arrival rate
# 4000s - 423 tps transaction arrival rate
# 3500s - 460 tps transaction arrival rate
```





#### Exp2: 2 cpu cores, 1 byte

Modify "peer0-org1.yaml" in the peer side as follows,

```shell
cpuset: "0,1"
```



Transaction arrival rate of the execute phase is controlled in the client side as follows,

```shell
#----------------------c=2------------------------------------#
# 7000s - 244 tps transaction arrival rate
# 6000s - 312 tps transaction arrival rate
# 5000s - 352 tps transaction arrival rate
# 4000s - 423 tps transaction arrival rate
# 3500s - 460 tps transaction arrival rate
# 3000s - 566 tps transaction arrival rate
# 2500s - 670 tps transaction arrival rate

```



#### Exp3: 4 cpu cores, 1 byte

Modify "peer0-org1.yaml"  in the peer side as follows,

```shell
cpuset: "0,1,2,3"
```



Transaction arrival rate of the execute phase is controlled in the client side as follows,

```shell
#----------------------c=4------------------------------------#
# 7000s - 244 tps transaction arrival rate
# 6000s - 312 tps transaction arrival rate
# 5000s - 352 tps transaction arrival rate
# 4000s - 423 tps transaction arrival rate
# 3500s - 460 tps transaction arrival rate
# 3000s - 566 tps transaction arrival rate
# 2500s - 670 tps transaction arrival rate
```









