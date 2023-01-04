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
# 8000s - 209 tps transaction arrival rate
# 6000s - 287 tps transaction arrival rate
# 5000s - 337 tps transaction arrival rate
# 4000s - 426 tps transaction arrival rate
# 3000s - 524 tps transaction arrival rate
# 2500s - 613 tps transaction arrival rate
# 2200s - 725 tps transaction arrival rate
# 2000s - 770 tps transaction arrival rate
```



#### Exp2: 2 cpu cores, 1 byte

Modify "peer0-org1.yaml" in the peer side as follows,

```shell
cpuset: "0,1"
```



Transaction arrival rate of the execute phase is controlled in the client side as follows,

```shell
#----------------------c=2------------------------------------#
# 4000s - 426 tps transaction arrival rate
# 2500s - 613 tps transaction arrival rate
# 1800s - 852 tps transaction arrival rate
# 1400s - 1095 tps transaction arrival rate
# 1200s - 1278 tps transaction arrival rate 
# 1000s - 1338 tps transaction arrival rate
# 900s - 1446 tps transaction arrival rate
# 800s - 1478 tps transaction arrival rate
```



#### Exp3: 4 cpu cores, 1 byte

Modify "peer0-org1.yaml"  in the peer side as follows,

```shell
cpuset: "0,1,2,3"
```



Transaction arrival rate of the execute phase is controlled in the client side as follows,

```shell
#----------------------c=2------------------------------------#
# 4000s - 426 tps transaction arrival rate
# 2500s - 613 tps transaction arrival rate
# 1800s - 852 tps transaction arrival rate
# 1400s - 1095 tps transaction arrival rate
# 1200s - 1278 tps transaction arrival rate 
# 1000s - 1338 tps transaction arrival rate
# 900s - 1446 tps transaction arrival rate
# 800s - 1478 tps transaction arrival rate
```









