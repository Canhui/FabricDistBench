
## 1. Workload Generator

#### 1.1. How to generate many transactions using many clients (user level)
Please see the modified file ssh.sh: https://github.com/Canhui/FabricDistBench/blob/main/fabric-samples/exp1_cpu_cores/workload/ssh.sh

#### 1.2. How to generate many transactions in a client (lower level) 
Please see the modified file invoke.js: https://github.com/Canhui/FabricDistBench/blob/main/fabric-samples/exp1_cpu_cores/workload/sdk-peer0-org1/invoke.js

#### 1.3. How to generate each transaction (lower level)
Please see the modified file transaction.js: https://github.com/Canhui/FabricDistBench/blob/main/fabric-samples/exp1_cpu_cores/workload/node_modules/fabric-network/lib/transaction.js



<br />

## 2. Numerical Results



#### 2.1. Results of the Execute Phase in the Local Cluster

Table 1. The throughput and latency of an endorsing peer with c=1,2,4 CPU cores in the local cluster

|      | Measure derived |         |          |         |             |                  |                   | Measure          |                      |                        |        | Our Model |               |                 |
| ---- | --------------- | ------- | -------- | ------- | ----------- | ---------------- | ----------------- | ---------------- | -------------------- | ---------------------- | ------ | --------- | ------------- | --------------- |
| $c$  | $\lambda^e$     | $\mu^e$ | $\rho^e$ | $T_s^e$ | Our $T_q^e$ | $M/M/1$  $T_q^e$ | $M/H_2/1$ $T_q^e$ | Our $T_{comm}^e$ | $M/M/1$ $T_{comm}^e$ | $M/H_2/1$ $T_{comm}^e$ | $T^e$  | Our $T^e$ | $M/M/1$ $T^e$ | $M/H_2/1$ $T^e$ |
| 1    | 209             | 780     | 0.2679   | 0.0013  | 0.0002      | 0.0005           | 0.0004            | 0.2837           | 0.2834               | 0.2835                 | 0.2852 |           |               |                 |
|      | 287             | 780     | 0.3679   | 0.0013  | 0.0004      | 0.0007           | 0.0006            | 0.4116           | 0.4113               | 0.4114                 | 0.4133 |           |               |                 |
|      | 337             | 780     | 0.4321   | 0.0013  | 0.0005      | 0.0010           | 0.0007            | 0.5830           | 0.5825               | 0.5828                 | 0.5848 |           |               |                 |
|      | 426             | 780     | 0.5462   | 0.0013  | 0.0007      | 0.0015           | 0.0012            | 0.7667           | 0.7659               | 0.7662                 | 0.7687 |           |               |                 |
|      | 524             | 780     | 0.6718   | 0.0013  | 0.0013      | 0.0026           | 0.0020            | 0.9018           | 0.9005               | 0.9011                 | 0.9044 |           |               |                 |
|      | 613             | 780     | 0.7859   | 0.0013  | 0.0024      | 0.0047           | 0.0035            | 1.0863           | 1.0840               | 1.0852                 | 1.0900 |           |               |                 |
|      | 725             | 780     | 0.9295   | 0.0013  | 0.0084      | 0.0169           | 0.0127            | 1.2250           | 1.2165               | 1.2207                 | 1.2347 |           |               |                 |
|      | 770             | 780     | 0.9872   | 0.0013  | 0.0494      | 0.0987           | 0.0740            | 1.0966           | 1.0473               | 1.0720                 | 1.1473 |           |               |                 |
| 2    | 426             | 780     | 0.2731   | 0.0013  | 0.0006      | 0.0002           | 0.0002            | 0.2388           | 0.2392               | 0.2392                 | 0.2407 |           |               |                 |
|      | 613             | 780     | 0.3929   | 0.0013  | 0.0001      | 0.0004           | 0.0003            | 0.3319           | 0.3316               | 0.3317                 | 0.3333 |           |               |                 |
|      | 852             | 780     | 0.5462   | 0.0013  | 0.0003      | 0.0007           | 0.0005            | 0.4754           | 0.4750               | 0.4752                 | 0.4770 |           |               |                 |
|      | 1095            | 780     | 0.7019   | 0.0013  | 0.0006      | 0.0015           | 0.0011            | 0.7336           | 0.7327               | 0.7331                 | 0.7355 |           |               |                 |
|      | 1278            | 780     | 0.8192   | 0.0013  | 0.0013      | 0.0029           | 0.0022            | 0.7539           | 0.7323               | 0.7330                 | 0.7565 |           |               |                 |
|      | 1338            | 780     | 0.8577   | 0.0013  | 0.0018      | 0.0039           | 0.0029            | 0.7817           | 0.7796               | 0.7806                 | 0.7848 |           |               |                 |
|      | 1446            | 780     | 0.9269   | 0.0013  | 0.0039      | 0.0081           | 0.0061            | 0.8588           | 0.8546               | 0.8566                 | 0.8640 |           |               |                 |
|      | 1478            | 780     | 0.9474   | 0.0013  | 0.0056      | 0.0116           | 0.0087            | 0.9440           | 0.9380               | 0.9409                 | 0.9509 |           |               |                 |
| 4    | 426             | 780     | 0.1365   | 0.0013  | 0.0000      | 0.0000           | 0.0000            | 0.1774           | 0.1774               | 0.1774                 | 0.1787 |           |               |                 |
|      | 613             | 780     | 0.1965   | 0.0013  | 0.0000      | 0.0000           | 0.0000            | 0.2162           | 0.2162               | 0.2162                 | 0.2175 |           |               |                 |
|      | 852             | 780     | 0.2731   | 0.0013  | 0.0000      | 0.0000           | 0.0000            | 0.3174           | 0.3174               | 0.3174                 | 0.3187 |           |               |                 |
|      | 1095            | 780     | 0.3510   | 0.0013  | 0.0000      | 0.0001           | 0.0001            | 0.3393           | 0.3392               | 0.3392                 | 0.3406 |           |               |                 |
|      | 1278            | 780     | 0.4096   | 0.0013  | 0.0000      | 0.0002           | 0.0001            | 0.3854           | 0.3852               | 0.3853                 | 0.3867 |           |               |                 |
|      | 1338            | 780     | 0.4288   | 0.0013  | 0.0000      | 0.0002           | 0.0001            | 0.4373           | 0.4371               | 0.4372                 | 0.4386 |           |               |                 |
|      | 1446            | 780     | 0.4635   | 0.0013  | 0.0000      | 0.0002           | 0.0002            | 0.4136           | 0.4134               | 0.4134                 | 0.4149 |           |               |                 |
|      | 1478            | 780     | 0.4737   | 0.0013  | 0.0000      | 0.0002           | 0.0002            | 0.5309           | 0.5307               | 0.5307                 | 0.5322 |           |               |                 |



Table 1 shows the throughput and latency of an endorsing peer with $c=1,2,4$ CPU core(s) in the local cluster. It validates the model of throughput and latency in the execute phase. The maximum throughput of an endorsing peer with a single CPU core is $\mu^e=780$ transactions per second, meaning that the service time of a transaction is $T_s^e=0.0013$ seconds. We use two examples to explain the table. In example one, let the number of CPU cores $c=1$ and the transaction arrival rate $\lambda^e=209$ transactions per second, we have the queueing latency $T_q^e=0.0002$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.2852$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.2852-0.0013-0.0002=0.2837$ seconds. 



_And when $c=1$, the average effective network bandwidth is stable around $\beta^e=29.8184$ Mbps, from which the model has an overall latency $T^e=0.3307$ seconds. In example two, let the number of CPU cores $c=2$ and the transaction arrival rate $\lambda^e=426$ transactions per second, we have the queueing latency $T_q^e=0.0007$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.2407$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.2387$ seconds. And when $c=2$, the average effective network bandwidth is stable around $\beta^e=82.4838$ Mbps, from which the model has an overall latency $T^e=0.2441$ seconds.   





#### 2.2. Results of the Execute Phase in the Cloud Cluster

Table 2. The throughput and latency of an endorsing peer with $c=$1,2,4 CPU cores in the cloud cluster.

|      | Measure derived |         |          |         |             |                 |                   | Measure          |                      |                        |        | Our model |
| ---- | --------------- | ------- | -------- | ------- | ----------- | --------------- | ----------------- | ---------------- | -------------------- | ---------------------- | ------ | --------- |
| $c$  | $\lambda^e$     | $\mu^e$ | $\rho^e$ | $T_s^e$ | Our $T_q^e$ | $M/M/1$ $T_q^e$ | $M/H_2/1$ $T_q^e$ | Our $T_{comm}^e$ | $M/M/1$ $T_{comm}^e$ | $M/H_2/1$ $T_{comm}^e$ | $T^e$  | $T^e$     |
| 1    | 214             | 470     | 0.4553   | 0.0021  | 0.0009      | 0.0018          | 0.0013            | 0.2125           | 0.2116               | 0.2121                 | 0.2155 |           |
|      | 244             | 470     | 0.5191   | 0.0021  | 0.0011      | 0.0023          | 0.0017            | 0.2446           | 0.2434               | 0.2440                 | 0.2478 |           |
|      | 312             | 470     | 0.6638   | 0.0021  | 0.0021      | 0.0042          | 0.0032            | 0.3178           | 0.3157               | 0.3167                 | 0.3220 |           |
|      | 352             | 470     | 0.7489   | 0.0021  | 0.0032      | 0.0063          | 0.0048            | 0.4165           | 0.4134               | 0.4149                 | 0.4218 |           |
|      | 423             | 470     | 0.9000   | 0.0021  | 0.0096      | 0.0191          | 0.0144            | 0.5234           | 0.5139               | 0.5186                 | 0.5351 |           |
|      | 460             | 470     | 0.9787   | 0.0021  | 0.0489      | 0.0979          | 0.0734            | 0.5715           | 0.5225               | 0.547                  | 0.6225 |           |
| 2    | 244             | 470     | 0.2596   | 0.0021  | 0.0000      | 0.0003          | 0.0002            | 0.0879           | 0.0876               | 0.0877                 | 0.0900 |           |
|      | 312             | 470     | 0.3319   | 0.0021  | 0.0001      | 0.0005          | 0.0003            | 0.1052           | 0.1048               | 0.105                  | 0.1074 |           |
|      | 352             | 470     | 0.3745   | 0.0021  | 0.0001      | 0.0006          | 0.0004            | 0.1278           | 0.1273               | 0.1275                 | 0.1300 |           |
|      | 423             | 470     | 0.4500   | 0.0021  | 0.0002      | 0.0008          | 0.0006            | 0.1663           | 0.1657               | 0.1659                 | 0.1686 |           |
|      | 460             | 470     | 0.4894   | 0.0021  | 0.0003      | 0.0010          | 0.0007            | 0.1709           | 0.1702               | 0.1705                 | 0.1733 |           |
|      | 566             | 470     | 0.6021   | 0.0021  | 0.0006      | 0.0016          | 0.0012            | 0.1908           | 0.1898               | 0.1902                 | 0.1935 |           |
|      | 670             | 470     | 0.7128   | 0.0021  | 0.0011      | 0.0026          | 0.0020            | 0.2043           | 0.2028               | 0.2034                 | 0.2075 |           |
| 4    | 244             | 470     | 0.1298   | 0.0021  | 0.0000      | 0.0000          | 0.0000            | 0.0685           | 0.0685               | 0.0685                 | 0.0706 |           |
|      | 312             | 470     | 0.1660   | 0.0021  | 0.0000      | 0.0001          | 0.0000            | 0.0753           | 0.0752               | 0.0753                 | 0.0774 |           |
|      | 352             | 470     | 0.1872   | 0.0021  | 0.0000      | 0.0001          | 0.0000            | 0.0767           | 0.0766               | 0.0767                 | 0.0788 |           |
|      | 423             | 470     | 0.2250   | 0.0021  | 0.0000      | 0.0001          | 0.0001            | 0.0796           | 0.0795               | 0.0795                 | 0.0817 |           |
|      | 460             | 470     | 0.2447   | 0.0021  | 0.0000      | 0.0001          | 0.0001            | 0.0922           | 0.0921               | 0.0921                 | 0.0943 |           |
|      | 566             | 470     | 0.3011   | 0.0021  | 0.0000      | 0.0002          | 0.0001            | 0.1065           | 0.1063               | 0.1064                 | 0.1086 |           |
|      | 670             | 470     | 0.3564   | 0.0021  | 0.0000      | 0.0002          | 0.0002            | 0.1142           | 0.114                | 0.114                  | 0.1163 |           |

Table 2 shows the throughput and latency of an endorsing peer with $c=1,2,4$ CPU core(s) in the cloud cluster. It validates the model of throughput and latency in the execute phase. The maximum throughput of an endorsing peer with a single CPU core is $\mu^e=470$ transactions per second, meaning that the service time of a transaction is $T_s^e=0.0021$ seconds. We use two examples to explain the table. In Example 1, let the number of CPU cores $c=1$ and the transaction arrival rate $\lambda^e=214$ transactions per second. We then have the queueing latency $T_q^e=0.0020$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.2155$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.2114$ seconds. And when $c=1$, the average effective network bandwidth is stable around $\beta^e=43.2167$ Mbps, from which the model has an overall latency $T^e=0.2362$ seconds. In Example 2, let the number of CPU cores be $c=2$ and the transaction arrival rate be $\lambda^e=244$ transactions per second; we have the queueing latency $T_q^e=0.0013$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.0900$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.0866$ seconds. And when $c=2$, the average effective network bandwidth is stable around $\beta^e=135.6649$ Mbps, from which the model has an overall latency $T^e=0.0877$ seconds. 



#### 2.3. Results of the Order Phase with a \textit{BatchSize} of 20 in the Local Cluster

Table 3. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3,9,15 OSNs in a local cluster of 1 Gbit/s Ethereum network. The BatchSize is 20 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure     |             |             |                 |        | Our model |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ----------- | ----------- | ----------- | --------------- | ------ | --------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$ | $T_{l2f}^r$ | Our $T_q^r$ | $M/M/1$ $T_q^r$ | $T^r$  | $T^r$     |
| 3    | 70              | 190     | 0.3684   | 0.0053  | 0.1429       | 0.0403      | 0.1924      | 0.0004      | 0.0031          | 0.3817 | 0.3582    |
|      | 109             | 190     | 0.5737   | 0.0053  | 0.0917       | 0.0521      | 0.2829      | 0.0023      | 0.0071          | 0.4332 | 0.4239    |
|      | 180             | 190     | 0.9474   | 0.0053  | 0.0556       | 0.0557      | 0.5703      | 0.0850      | 0.0947          | 0.6884 | 0.6002    |
| 9    | 70              | 190     | 0.3684   | 0.0053  | 0.1429       | 0.0422      | 0.2399      | 0.0004      | 0.0031          | 0.4303 | 0.4248    |
|      | 109             | 190     | 0.5737   | 0.0053  | 0.0917       | 0.0466      | 0.3835      | 0.0023      | 0.0071          | 0.5279 | 0.5284    |
|      | 180             | 190     | 0.9474   | 0.0053  | 0.0556       | 0.0417      | 0.8332      | 0.0850      | 0.0947          | 0.9496 | 0.7860    |
| 15   | 70              | 190     | 0.3684   | 0.0053  | 0.1429       | 0.0522      | 0.2190      | 0.0004      | 0.0031          | 0.4199 | 0.3916    |
|      | 109             | 190     | 0.5737   | 0.0053  | 0.0917       | 0.0549      | 0.2735      | 0.0023      | 0.0071          | 0.4264 | 0.4763    |
|      | 180             | 190     | 0.9474   | 0.0053  | 0.0556       | 0.0532      | 0.7816      | 0.0850      | 0.0947          | 0.9091 | 0.6988    |

Table 3 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a local cluster of a 1 Gbit/s Ethernet network. The \textit{BatchSize} is 20 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 20 is $\mu^r=190$ transactions per second. This means that the service time of a transaction is $T_s^r=0.0053$ seconds. For example, if we let the number of ordering service nodes be $k=3$ and the transaction arrival rate be $\lambda^r=70$ transactions per second, we have a queueing latency of $T_q^r=0.0009$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.3817$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0403$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.1924$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=57.3301$ Mbps, $\beta_{l2f}^r=18.1730$ Mbps, from which the model has an overall latency $T^r=0.3582$ seconds.



#### 2.4. Results of the Order Phase with a \textit{BatchSize} of 50 in the Local Cluster

Table 4. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3, 9, 15 OSNs in a local cluster of 1 Gbps Ethereum network. The BatchSize is 50 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure     |             |               |                   |        | Our model |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ----------- | ----------- | ------------- | ----------------- | ------ | --------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$ | $T_{l2f}^r$ | Our $T_{q}^r$ | $M/M/1$ $T_{q}^r$ | $T^r$  | $T^r$     |
| 3    | 109             | 370     | 0.2946   | 0.0027  | 0.2294       | 0.0516      | 0.0987      | 0.0000        | 0.0011            | 0.3824 | 0.3434    |
|      | 180             | 370     | 0.4865   | 0.0027  | 0.1389       | 0.0552      | 0.1653      | 0.0006        | 0.0026            | 0.3622 | 0.3254    |
|      | 263             | 370     | 0.7108   | 0.0027  | 0.0951       | 0.0539      | 0.1960      | 0.0034        | 0.0066            | 0.3480 | 0.3665    |
|      | 310             | 370     | 0.8378   | 0.0027  | 0.0806       | 0.0424      | 0.3253      | 0.0098        | 0.0140            | 0.4515 | 0.4001    |
|      | 342             | 370     | 0.9243   | 0.0027  | 0.0731       | 0.0459      | 0.3355      | 0.0282        | 0.0330            | 0.4584 | 0.4260    |
| 9    | 109             | 370     | 0.2946   | 0.0027  | 0.2294       | 0.0552      | 0.1572      | 0.0000        | 0.0011            | 0.4258 | 0.3638    |
|      | 180             | 370     | 0.4865   | 0.0027  | 0.1389       | 0.0584      | 0.1724      | 0.0006        | 0.0026            | 0.3725 | 0.3591    |
|      | 263             | 370     | 0.7108   | 0.0027  | 0.0951       | 0.0569      | 0.2622      | 0.0034        | 0.0066            | 0.4169 | 0.4155    |
|      | 310             | 370     | 0.8378   | 0.0027  | 0.0806       | 0.0443      | 0.3315      | 0.0098        | 0.0140            | 0.4593 | 0.4579    |
|      | 342             | 370     | 0.9243   | 0.0027  | 0.0731       | 0.0463      | 0.3633      | 0.0282        | 0.0330            | 0.4857 | 0.4892    |
| 15   | 109             | 370     | 0.2946   | 0.0027  | 0.2294       | 0.0397      | 0.1511      | 0.0000        | 0.0011            | 0.4230 | 0.3670    |
|      | 180             | 370     | 0.4865   | 0.0027  | 0.1389       | 0.0439      | 0.1961      | 0.0006        | 0.0026            | 0.3816 | 0.3642    |
|      | 263             | 370     | 0.7108   | 0.0027  | 0.0951       | 0.0363      | 0.2428      | 0.0034        | 0.0066            | 0.3769 | 0.4230    |
|      | 310             | 370     | 0.8378   | 0.0027  | 0.0806       | 0.0410      | 0.3506      | 0.0098        | 0.0140            | 0.4750 | 0.4667    |
|      | 342             | 370     | 0.9243   | 0.0027  | 0.0731       | 0.0373      | 0.3549      | 0.0282        | 0.0330            | 0.4685 | 0.4993    |

TABLE 4 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a local cluster of a 1 Gbit/s Ethernet network. The \textit{BatchSize} is 50 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 50 is $\mu^r=370$ transactions per second. This means that the service time of a transaction is $ T_s^r = 0.0027$ seconds. For example, if the number of ordering service nodes is $k=3$ and the transaction arrival rate is $\lambda^r=109$ transactions per second, we have a queueing latency of $T_q^r=0.0001$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.3824$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0516$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.0987$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=120.0235$ Mbps, $\beta_{l2f}^r=56.8093$~Mbps, from which the model has an overall latency $T^r=0.3434$~seconds.



#### 2.5. Results of the Order Phase with a \textit{BatchSize} of 2 in the Cloud Cluster

Table 5. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3,9,15 OSNs in a cloud cluster of 10 Gbps Ethereum network. The BatchSize is 2 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure             |             |               |                   |                     | Our model |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ------------------- | ----------- | ------------- | ----------------- | ------------------- | --------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$         | $T_{l2f}^r$ | Our $T_{q}^r$ | $M/M/1$ $T_{q}^r$ | $T^r$               | $T^r$     |
| 3    | 244             | 850     | 0.2871   | 0.0012  | 0.0041       | 0.0251              | 0.0172      | 0.0000        | 0.0004            | 0.0475              | 0.0431    |
|      | 312             | 850     | 0.3671   | 0.0012  | 0.0032       | 0.0222              | 0.0282      | 0.0000        | 0.0006            | 0.0548              | 0.0528    |
|      | 352             | 850     | 0.4141   | 0.0012  | 0.0028       | 0.0218              | 0.0287      | 0.0001        | 0.0008            | 0.0546              | 0.0586    |
|      | 423             | 850     | 0.4976   | 0.0012  | 0.0024       | 0.0415              | 0.0559      | 0.0002        | 0.0012            | 0.0707              | 0.0691    |
|      | 566             | 850     | 0.6659   | 0.0012  | 0.0018       | 0.0223 $\pm$ 0.0028 | 0.0659      | 0.0010        | 0.0023            | 0.0912              | 0.0907    |
|      | 760             | 850     | 0.8941   | 0.0012  | 0.0013       | 0.0224              | 0.3475      | 0.0079        | 0.0099            | 0.3738              | 0.1217    |
| 9    | 244             | 850     | 0.2871   | 0.0012  | 0.0041       | 0.0236              | 0.0215      | 0.0000        | 0.0004            | 0.0505              | 0.0394    |
|      | 312             | 850     | 0.3671   | 0.0012  | 0.0032       | 0.0214              | 0.0292      | 0.0000        | 0.0006            | 0.0550              | 0.0480    |
|      | 352             | 850     | 0.4141   | 0.0012  | 0.0028       | 0.0255              | 0.0274      | 0.0001        | 0.0008            | 0.0569              | 0.0532    |
|      | 423             | 850     | 0.4976   | 0.0012  | 0.0024       | 0.0225              | 0.0386      | 0.0002        | 0.0012            | 0.0647              | 0.0627    |
|      | 566             | 850     | 0.6659   | 0.0012  | 0.0018       | 0.0217              | 0.0518      | 0.0010        | 0.0023            | 0.0765              | 0.0821    |
|      | 760             | 850     | 0.7318   | 0.0012  | 0.0013       | 0.0219              | 0.0668      | 0.0079        | 0.0099            | 0.0945              | 0.1120    |
| 15   | 244             | 850     | 0.2871   | 0.0012  | 0.0041       | 0.0241              | 0.0232      | 0.0000        | 0.0004            | 0.0526              | 0.0401    |
|      | 312             | 850     | 0.3671   | 0.0012  | 0.0032       | 0.0283              | 0.0261      | 0.0000        | 0.0006            | 0.0588 $\pm$ 0.0036 | 0.0490    |
|      | 352             | 850     | 0.4141   | 0.0012  | 0.0028       | 0.0240              | 0.0314      | 0.0001        | 0.0008            | 0.0594              | 0.0543    |
|      | 423             | 850     | 0.4976   | 0.0012  | 0.0024       | 0.0237              | 0.0307      | 0.0002        | 0.0012            | 0.0580              | 0.0640    |
|      | 566             | 850     | 0.6659   | 0.0012  | 0.0018       | 0.0243              | 0.0450      | 0.0010        | 0.0023            | 0.0723              | 0.0838    |
|      | 760             | 850     | 0.8941   | 0.0012  | 0.0013       | 0.0249              | 0.1291      | 0.0079        | 0.0099            | 0.1580              | 0.1126    |

TABLE 5 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a cloud cluster of a 10 Gbit/s Ethernet network. The \textit{BatchSize} is 2 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 2 is $\mu^r=850$ transactions per second. This means that the service time of a transaction is $ T_s^r = 0.0012$ seconds. For example, if we let the number of ordering service nodes be $k=3$ and the transaction arrival rate be $\lambda^r=244$ transactions per second, we have the queueing latency $T_q^r=0.0000$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.0475$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0251$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.0172$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=456.5142$ Mbps, $\beta_{l2f}^r=452.0089$~Mbps, from which the model has an overall latency $T^r=0.0431$~seconds.



#### 2.6. Results of the Order Phase with a \textit{BatchSize} of 5 in the Cloud Cluster

Table 6. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3,9,15 OSNs in a cloud cluster of 10 Gbps Ethereum network. The BatchSize is 5 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure     |             |               |                   |                     | Our model |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ----------- | ----------- | ------------- | ----------------- | ------------------- | --------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$ | $T_{l2f}^r$ | Our $T_{q}^r$ | $M/M/1$ $T_{q}^r$ | $T^r$               | $T^r$     |
| 3    | 244             | 1500    | 0.1627   | 0.0007  | 0.0102       | 0.0237      | 0.0104      | 0.0000        | 0.0001            | 0.0450 $\pm$ 0.0069 | 0.0319    |
|      | 312             | 1500    | 0.2080   | 0.0007  | 0.0080       | 0.0228      | 0.0130      | 0.0000        | 0.0001            | 0.0445 $\pm$ 0.0045 | 0.0355    |
|      | 352             | 1500    | 0.2347   | 0.0007  | 0.0071       | 0.0236      | 0.0174      | 0.0000        | 0.0002            | 0.0487 $\pm$ 0.0053 | 0.0380    |
|      | 423             | 1500    | 0.2820   | 0.0007  | 0.0059       | 0.0205      | 0.0218      | 0.0000        | 0.0002            | 0.0489 $\pm$ 0.0077 | 0.0429    |
|      | 566             | 1500    | 0.3773   | 0.0007  | 0.0044       | 0.0207      | 0.0213      | 0.0000        | 0.0004            | 0.0470 $\pm$ 0.0082 | 0.0537    |
|      | 760             | 1500    | 0.5067   | 0.0007  | 0.0033       | 0.0202      | 0.0247      | 0.0001        | 0.0006            | 0.0488 $\pm$ 0.0076 | 0.0692    |
| 9    | 244             | 1500    | 0.1627   | 0.0007  | 0.0102       | 0.0255      | 0.0112      | 0.0000        | 0.0001            | 0.0476 $\pm$ 0.0059 | 0.0340    |
|      | 312             | 1500    | 0.2080   | 0.0007  | 0.0080       | 0.0262      | 0.0170      | 0.0000        | 0.0001            | 0.0519 $\pm$ 0.0060 | 0.0382    |
|      | 352             | 1500    | 0.2347   | 0.0007  | 0.0071       | 0.0274      | 0.0197      | 0.0000        | 0.0002            | 0.0548 $\pm$ 0.0070 | 0.0411    |
|      | 423             | 1500    | 0.2820   | 0.0007  | 0.0059       | 0.0239      | 0.0203      | 0.0000        | 0.0002            | 0.0508 $\pm$ 0.0074 | 0.0466    |
|      | 566             | 1500    | 0.3773   | 0.0007  | 0.0044       | 0.0221      | 0.0285      | 0.0000        | 0.0004            | 0.0556 $\pm$ 0.0051 | 0.0587    |
|      | 760             | 1500    | 0.5067   | 0.0007  | 0.0033       | 0.0204      | 0.0295      | 0.0001        | 0.0006            | 0.0538 $\pm$ 0.0058 | 0.0759    |
| 15   | 244             | 1500    | 0.1627   | 0.0007  | 0.0102       | 0.0250      | 0.0104      | 0.0000        | 0.0001            | 0.0463 $\pm$ 0.0045 | 0.0327    |
|      | 312             | 1500    | 0.2080   | 0.0007  | 0.0080       | 0.0256      | 0.0135      | 0.0000        | 0.0001            | 0.0478 $\pm$ 0.0033 | 0.0366    |
|      | 352             | 1500    | 0.2347   | 0.0007  | 0.0071       | 0.0280      | 0.0167      | 0.0000        | 0.0002            | 0.0525 $\pm$ 0.0022 | 0.0392    |
|      | 423             | 1500    | 0.2820   | 0.0007  | 0.0059       | 0.0228      | 0.0186      | 0.0000        | 0.0004            | 0.0480 $\pm$ 0.0064 | 0.0444    |
|      | 566             | 1500    | 0.3773   | 0.0007  | 0.0044       | 0.0232      | 0.0224      | 0.0000        | 0.0004            | 0.0507 $\pm$ 0.0077 | 0.0557    |
|      | 760             | 1500    | 0.5067   | 0.0007  | 0.0033       | 0.0207      | 0.0243      | 0.0001        | 0.0006            | 0.0490 $\pm$ 0.0096 | 0.0719    |

Table 6 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a cloud cluster of a 10 Gbit/s Ethernet network. The \textit{BatchSize} is 5 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 5 is $\mu^r=1500$ transactions per second. This means that the service time of a transaction is $ T_s^r = 0.0007$ seconds. For example, if we let the number of ordering service nodes be $k=3$ and the transaction arrival rate be $\lambda^r=244$ transactions per second, we have the queueing latency $T_q^r=0.0000$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.0450$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0237$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.0104$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=488.6910$ Mbps, $\beta_{l2f}^r=1235.1806$~Mbps, from which the model has an overall latency $T^r=0.0319$~seconds.



#### 2.7. Results of the Validate Phase in the Local Cluster

Table 7. The effects of an HDD of 63 IOps on the throughput and latency in the validate phase. There is a committing peer in a local cluster of 1 Gbps Ethereum network. The BatchSize is 20, 50. And the BatchTimeout is 1.

|           | Measure derived |         |          |         | Measure      |               |                   |                     |        | Our model |
| --------- | --------------- | ------- | -------- | ------- | ------------ | ------------- | ----------------- | ------------------- | ------ | --------- |
| BatchSize | $\lambda^v$     | $\mu^v$ | $\rho^v$ | $T_s^v$ | $T_{comm}^v$ | Our $T_{q}^v$ | $M/M/1$ $T_{q}^v$ | $M/E_r/1$ $T_{q}^v$ | $T^v$  | $T^v$     |
| 20        | 65              | 85      | 0.7647   | 0.0118  | 0.6233       | 0.0224        | 0.0382            | 0.0287              | 0.6361 | 0.6351    |
|           | 82              | 85      | 0.9647   | 0.0118  | 0.8385       | 0.2993        | 0.3216            | 0.2412              | 0.8683 | 0.8149    |
| 50        | 65              | 185     | 0.3514   | 0.0054  | 0.2216       | 0.0003        | 0.0029            | 0.0022              | 0.2277 | 0.1543    |
|           | 109             | 185     | 0.5795   | 0.0054  | 0.2592       | 0.0027        | 0.0078            | 0.0058              | 0.2654 | 0.2342    |
|           | 142             | 185     | 0.7676   | 0.0054  | 0.2487       | 0.0105        | 0.0179            | 0.0134              | 0.2567 | 0.3318    |



Table~7 shows the effects of an HDD of 63 IOs per second on the throughput and latency in the validate phase. There is a committing peer in the local cluster of a 1~Gbit/s Ethernet network. The \textit{BatchSize} is 20, 50, respectively, and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency of a committing peer in the validate phase. The maximum throughput of the committing peer with a \textit{BatchSize} of 20 is $\mu^v=85$ transactions per second. This means that the service time of a transaction is $T_s^v = 0.0118$ seconds. For example, let the transaction arrival rate $\lambda^v=65$ transactions per second, we have the queueing latency $T_q^v=0.0010$ seconds. We measure the overall latency of a transaction spent in the validate phase $T^v=0.6361$ seconds. And when a \textit{BatchSize} of 20, the average effective network bandwidth is stable around $\beta^v=2.4478$ Mbps, from which the model has an overall latency $T^v=0.6351$ seconds.



#### 2.8. Results of the Validate Phase in the Cloud Cluster

Table 8. The effects of an SSD of 1490 IOps on the throughput and latency in the validate phase. There is a committing peer in a local cluster of 10 Gbps Ethereum network. The BatchSize is 2, 5. And the BatchTimeout is 1.

|           | Measure derived |         |          |         | Measure      |               |                   |                     |        | Our model |
| --------- | --------------- | ------- | -------- | ------- | ------------ | ------------- | ----------------- | ------------------- | ------ | --------- |
| BatchSize | $\lambda^v$     | $\mu^v$ | $\rho^v$ | $T_s^v$ | $T_{comm}^v$ | Our $T_{q}^v$ | $M/M/1$ $T_{q}^v$ | $M/E_r/1$ $T_{q}^v$ | $T^v$  | $T^v$     |
| 2         | 78              | 180     | 0.4333   | 0.0056  | 0.0517       | 0.0007        | 0.0042            | 0.0032              | 0.0578 | 0.0602    |
|           | 90              | 180     | 0.5000   | 0.0056  | 0.0457       | 0.0014        | 0.0056            | 0.0042              | 0.0518 | 0.0685    |
|           | 150             | 180     | 0.8333   | 0.0056  | 0.1955       | 0.0193        | 0.0278            | 0.0208              | 0.2059 | 0.1146    |
| 5         | 78              | 1490    | 0.0523   | 0.0007  | 0.0347       | 0.0000        | 0.0000            | 0.0000              | 0.0354 | 0.0248    |
|           | 90              | 1490    | 0.0604   | 0.0007  | 0.0355       | 0.0000        | 0.0000            | 0.0000              | 0.0362 | 0.0285    |
|           | 150             | 1490    | 0.1007   | 0.0007  | 0.0417       | 0.0000        | 0.0000            | 0.0000              | 0.0424 | 0.0470    |
|           | 214             | 1490    | 0.1436   | 0.0007  | 0.0531       | 0.0000        | 0.0001            | 0.0000              | 0.0538 | 0.0668    |
|           | 240             | 1490    | 0.1611   | 0.0007  | 0.0828       | 0.0000        | 0.0001            | 0.0000              | 0.0834 | 0.0748    |

Table 8 shows the effects of an SSD of 1490 IOs per second on the throughput and latency in the validate phase. There is a committing peer in the cloud cluster of a 10~Gbit/s Ethernet network. The \textit{BatchSize} is 2, 5, respectively, and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency of a committing peer in the validate phase. The maximum throughput of the committing peer with a \textit{BatchSize} of 2 is $\mu^v=180$ transactions per second. This means that the service time of a transaction is $ T_s^v = 0.0056$ seconds. For example, let the transaction arrival rate $\lambda^v=65$ transactions per second, we have the queueing latency $T_q^v=0.0005$ seconds. We measure the overall latency of a transaction spent in the validate phase $T^v=0.0578$ seconds. And when a \textit{BatchSize} of 2, the average effective network bandwidth is stable around $\beta^v=33.7581$ Mbps, from which the model has an overall latency $T^v=0.0602$ seconds.
