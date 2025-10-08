
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

|      | Measure derived |         |          |         |         | Measure             |                     | Our Model |
| ---- | --------------- | ------- | -------- | ------- | ------- | ------------------- | ------------------- | --------- |
| $c$  | $\lambda^e$     | $\mu^e$ | $\rho^e$ | $T_s^e$ | $T_q^e$ | $T_{comm}^e$        | $T^e$               | $T^e$     |
| 1    | 209             | 780     | 0.2679   | 0.0013  | 0.0008  | 0.2831 $\pm$ 0.0103 | 0.2852 $\pm$ 0.0103 | 0.3307    |
|      | 287             | 780     | 0.3679   | 0.0013  | 0.0010  | 0.4110 $\pm$ 0.0145 | 0.4133 $\pm$ 0.0145 | 0.4535    |
|      | 337             | 780     | 0.4321   | 0.0013  | 0.0011  | 0.5824 $\pm$ 0.0291 | 0.5848 $\pm$ 0.0291 | 0.5322    |
|      | 426             | 780     | 0.5462   | 0.0013  | 0.0014  | 0.7660 $\pm$ 0.0741 | 0.7687 $\pm$ 0.0741 | 0.6724    |
|      | 524             | 780     | 0.6718   | 0.0013  | 0.0020  | 0.9011 $\pm$ 0.0904 | 0.9044 $\pm$ 0.0904 | 0.8270    |
|      | 613             | 780     | 0.7859   | 0.0013  | 0.0030  | 1.0857 $\pm$ 0.1982 | 1.0900 $\pm$ 0.1982 | 0.9679    |
|      | 725             | 780     | 0.9295   | 0.0013  | 0.0091  | 1.2243 $\pm$ 0.2908 | 1.2347 $\pm$ 0.2908 | 1.1501    |
|      | 770             | 780     | 0.9872   | 0.0013  | 0.0500  | 1.0960 $\pm$ 0.2199 | 1.1473 $\pm$ 0.2199 | 1.2618    |
| 2    | 426             | 780     | 0.2731   | 0.0013  | 0.0007  | 0.2387 $\pm$ 0.0173 | 0.2407 $\pm$ 0.0173 | 0.2441    |
|      | 613             | 780     | 0.3929   | 0.0013  | 0.0008  | 0.3312 $\pm$ 0.0173 | 0.3333 $\pm$ 0.0573 | 0.3505    |
|      | 852             | 780     | 0.5462   | 0.0013  | 0.0009  | 0.4748 $\pm$ 0.0173 | 0.4770 $\pm$ 0.0928 | 0.4864    |
|      | 1095            | 780     | 0.7019   | 0.0013  | 0.0013  | 0.7329 $\pm$ 0.0173 | 0.7355 $\pm$ 0.1612 | 0.6249    |
|      | 1278            | 780     | 0.8192   | 0.0013  | 0.0020  | 0.7532 $\pm$ 0.0173 | 0.7565 $\pm$ 0.2216 | 0.7296    |
|      | 1338            | 780     | 0.8577   | 0.0013  | 0.0024  | 0.7811 $\pm$ 0.0173 | 0.7848 $\pm$ 0.2273 | 0.7641    |
|      | 1446            | 780     | 0.9269   | 0.0013  | 0.0046  | 0.8581 $\pm$ 0.0173 | 0.8640 $\pm$ 0.2406 | 0.8277    |
|      | 1478            | 780     | 0.9474   | 0.0013  | 0.0063  | 0.9433 $\pm$ 0.0173 | 0.9509 $\pm$ 0.1122 | 0.8475    |
| 4    | 426             | 780     | 0.1365   | 0.0013  | 0.0012  | 0.1762 $\pm$ 0.0143 | 0.1787 $\pm$ 0.0143 | 0.1356    |
|      | 613             | 780     | 0.1965   | 0.0013  | 0.0010  | 0.2152 $\pm$ 0.0277 | 0.2175 $\pm$ 0.0277 | 0.1938    |
|      | 852             | 780     | 0.2731   | 0.0013  | 0.0008  | 0.3166 $\pm$ 0.0323 | 0.3187 $\pm$ 0.0323 | 0.2682    |
|      | 1095            | 780     | 0.3510   | 0.0013  | 0.0008  | 0.3385 $\pm$ 0.0632 | 0.3406 $\pm$ 0.0632 | 0.3441    |
|      | 1278            | 780     | 0.4096   | 0.0013  | 0.0007  | 0.3847 $\pm$ 0.0748 | 0.3867 $\pm$ 0.0748 | 0.4012    |
|      | 1338            | 780     | 0.4288   | 0.0013  | 0.0007  | 0.4366 $\pm$ 0.1653 | 0.4386 $\pm$ 0.1653 | 0.4199    |
|      | 1446            | 780     | 0.4635   | 0.0013  | 0.0007  | 0.4129 $\pm$ 0.1778 | 0.4149 $\pm$ 0.1778 | 0.4537    |
|      | 1478            | 780     | 0.4737   | 0.0013  | 0.0007  | 0.5302 $\pm$ 0.2986 | 0.5322 $\pm$ 0.2986 | 0.4637    |



Table 1 shows the throughput and latency of an endorsing peer with $c=1,2,4$ CPU core(s) in the local cluster. It validates the model of throughput and latency in the execute phase. The maximum throughput of an endorsing peer with a single CPU core is $\mu^e=780$ transactions per second, meaning that the service time of a transaction is $T_s^e=0.0013$ seconds. We use two examples to explain the table. In example one, let the number of CPU cores $c=1$ and the transaction arrival rate $\lambda^e=209$ transactions per second, we have the queueing latency $T_q^e=0.0008$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.2852$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.2831$ seconds. And when $c=1$, the average effective network bandwidth is stable around $\beta^e=29.8184$ Mbps, from which the model has an overall latency $T^e=0.3307$ seconds. In example two, let the number of CPU cores $c=2$ and the transaction arrival rate $\lambda^e=426$ transactions per second, we have the queueing latency $T_q^e=0.0007$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.2407$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.2387$ seconds. And when $c=2$, the average effective network bandwidth is stable around $\beta^e=82.4838$ Mbps, from which the model has an overall latency $T^e=0.2441$ seconds.   





#### 2.2. Results of the Execute Phase in the Cloud Cluster

Table 2. The throughput and latency of an endorsing peer with $c=$1,2,4 CPU cores in the cloud cluster.

|      | Measure derived |         |          |         |         | Measure             |                     | Our model |
| ---- | --------------- | ------- | -------- | ------- | ------- | ------------------- | ------------------- | --------- |
| $c$  | $\lambda^e$     | $\mu^e$ | $\rho^e$ | $T_s^e$ | $T_q^e$ | $T_{comm}^e$        | $T^e$               | $T^e$     |
| 1    | 214             | 470     | 0.4553   | 0.0021  | 0.0020  | 0.2114 $\pm$ 0.0128 | 0.2155 $\pm$ 0.0128 | 0.2362    |
|      | 244             | 470     | 0.5191   | 0.0021  | 0.0022  | 0.2435 $\pm$ 0.0359 | 0.2478 $\pm$ 0.0359 | 0.2690    |
|      | 312             | 470     | 0.6638   | 0.0021  | 0.0032  | 0.3167 $\pm$ 0.0241 | 0.3220 $\pm$ 0.0241 | 0.3437    |
|      | 352             | 470     | 0.7489   | 0.0021  | 0.0042  | 0.4155 $\pm$ 0.0764 | 0.4218 $\pm$ 0.0764 | 0.3881    |
|      | 423             | 470     | 0.9000   | 0.0021  | 0.0106  | 0.5224 $\pm$ 0.0771 | 0.5351 $\pm$ 0.0772 | 0.4715    |
|      | 460             | 470     | 0.9787   | 0.0021  | 0.0500  | 0.5704 $\pm$ 0.0610 | 0.6225 $\pm$ 0.0610 | 0.5510    |
| 2    | 244             | 470     | 0.2596   | 0.0021  | 0.0013  | 0.0866 $\pm$ 0.0036 | 0.0900 $\pm$ 0.0036 | 0.0877    |
|      | 312             | 470     | 0.3319   | 0.0021  | 0.0013  | 0.1040 $\pm$ 0.0103 | 0.1074 $\pm$ 0.0103 | 0.1112    |
|      | 352             | 470     | 0.3745   | 0.0021  | 0.0013  | 0.1266 $\pm$ 0.0125 | 0.1300 $\pm$ 0.0125 | 0.1250    |
|      | 423             | 470     | 0.4500   | 0.0021  | 0.0014  | 0.1651 $\pm$ 0.0085 | 0.1686 $\pm$ 0.0085 | 0.1497    |
|      | 460             | 470     | 0.4894   | 0.0021  | 0.0015  | 0.1697 $\pm$ 0.0180 | 0.1733 $\pm$ 0.0180 | 0.1625    |
|      | 566             | 470     | 0.6021   | 0.0021  | 0.0017  | 0.1897 $\pm$ 0.0160 | 0.1935 $\pm$ 0.0160 | 0.1994    |
|      | 670             | 470     | 0.7128   | 0.0021  | 0.0022  | 0.2032 $\pm$ 0.0136 | 0.2075 $\pm$ 0.0136 | 0.2358    |
| 4    | 244             | 470     | 0.1298   | 0.0021  | 0.0020  | 0.0665 $\pm$ 0.0020 | 0.0706 $\pm$ 0.0019 | 0.0536    |
|      | 312             | 470     | 0.1660   | 0.0021  | 0.0018  | 0.0735 $\pm$ 0.0045 | 0.0774 $\pm$ 0.0045 | 0.0672    |
|      | 352             | 470     | 0.1872   | 0.0021  | 0.0017  | 0.0749 $\pm$ 0.0040 | 0.0788 $\pm$ 0.0040 | 0.0752    |
|      | 423             | 470     | 0.2250   | 0.0021  | 0.0016  | 0.0780 $\pm$ 0.0038 | 0.0817 $\pm$ 0.0038 | 0.0895    |
|      | 460             | 470     | 0.2447   | 0.0021  | 0.0015  | 0.0907 $\pm$ 0.0060 | 0.0943 $\pm$ 0.0060 | 0.0969    |
|      | 566             | 470     | 0.3011   | 0.0021  | 0.0014  | 0.1051 $\pm$ 0.0030 | 0.1086 $\pm$ 0.0030 | 0.1183    |
|      | 670             | 470     | 0.3564   | 0.0021  | 0.0014  | 0.1128 $\pm$ 0.0090 | 0.1163 $\pm$ 0.0090 | 0.1394    |

Table 2 shows the throughput and latency of an endorsing peer with $c=1,2,4$ CPU core(s) in the cloud cluster. It validates the model of throughput and latency in the execute phase. The maximum throughput of an endorsing peer with a single CPU core is $\mu^e=470$ transactions per second, meaning that the service time of a transaction is $T_s^e=0.0021$ seconds. We use two examples to explain the table. In Example 1, let the number of CPU cores $c=1$ and the transaction arrival rate $\lambda^e=214$ transactions per second. We then have the queueing latency $T_q^e=0.0020$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.2155$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.2114$ seconds. And when $c=1$, the average effective network bandwidth is stable around $\beta^e=43.2167$ Mbps, from which the model has an overall latency $T^e=0.2362$ seconds. In Example 2, let the number of CPU cores be $c=2$ and the transaction arrival rate be $\lambda^e=244$ transactions per second; we have the queueing latency $T_q^e=0.0013$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.0900$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.0866$ seconds. And when $c=2$, the average effective network bandwidth is stable around $\beta^e=135.6649$ Mbps, from which the model has an overall latency $T^e=0.0877$ seconds. 



#### 2.3. Results of the Order Phase with a \textit{BatchSize} of 20 in the Local Cluster

Table 3. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3,9,15 OSNs in a local cluster of 1 Gbit/s Ethereum network. The BatchSize is 20 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure             |                     |                     |                     | Our model |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ------------------- | ------------------- | ------------------- | ------------------- | --------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$         | $T_{l2f}^r$         | $T_q^r$             | $T^r$               | $T^r$     |
| 3    | 70              | 190     | 0.3684   | 0.0053  | 0.1429       | 0.0403 $\pm$ 0.0061 | 0.1924 $\pm$ 0.1082 | 0.0009 $\pm$ 0.0008 | 0.3817 $\pm$ 0.1051 | 0.3582    |
|      | 109             | 190     | 0.5737   | 0.0053  | 0.0917       | 0.0521 $\pm$ 0.0080 | 0.2829 $\pm$ 0.0705 | 0.0011 $\pm$ 0.0010 | 0.4332 $\pm$ 0.0792 | 0.4239    |
|      | 180             | 190     | 0.9474   | 0.0053  | 0.0556       | 0.0557 $\pm$ 0.0160 | 0.5703 $\pm$ 0.1246 | 0.0015 $\pm$ 0.0013 | 0.6884 $\pm$ 0.1411 | 0.6002    |
| 9    | 70              | 190     | 0.3684   | 0.0053  | 0.1429       | 0.0422 $\pm$ 0.0061 | 0.2399 $\pm$ 0.0628 | 0.0001 $\pm$ 0.0000 | 0.4303 $\pm$ 0.0636 | 0.4248    |
|      | 109             | 190     | 0.5737   | 0.0053  | 0.0917       | 0.0466 $\pm$ 0.0047 | 0.3835 $\pm$ 0.1053 | 0.0007 $\pm$ 0.0004 | 0.5279 $\pm$ 0.1083 | 0.5284    |
|      | 180             | 190     | 0.9474   | 0.0053  | 0.0556       | 0.0417 $\pm$ 0.0050 | 0.8332 $\pm$ 0.1476 | 0.0139 $\pm$ 0.0131 | 0.9496 $\pm$ 0.1345 | 0.7860    |
| 15   | 70              | 190     | 0.3684   | 0.0053  | 0.1429       | 0.0522 $\pm$ 0.0163 | 0.2190 $\pm$ 0.0582 | 0.0006 $\pm$ 0.0006 | 0.4199 $\pm$ 0.0466 | 0.3916    |
|      | 109             | 190     | 0.5737   | 0.0053  | 0.0917       | 0.0549 $\pm$ 0.0136 | 0.2735 $\pm$ 0.0478 | 0.0011 $\pm$ 0.0011 | 0.4264 $\pm$ 0.0589 | 0.4763    |
|      | 180             | 190     | 0.9474   | 0.0053  | 0.0556       | 0.0532 $\pm$ 0.0136 | 0.7816 $\pm$ 0.1740 | 0.0134 $\pm$ 0.0155 | 0.9091 $\pm$ 0.1467 | 0.6988    |

Table 3 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a local cluster of a 1 Gbit/s Ethernet network. The \textit{BatchSize} is 20 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 20 is $\mu^r=190$ transactions per second. This means that the service time of a transaction is $T_s^r=0.0053$ seconds. For example, if we let the number of ordering service nodes be $k=3$ and the transaction arrival rate be $\lambda^r=70$ transactions per second, we have a queueing latency of $T_q^r=0.0009$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.3817$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0403$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.1924$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=57.3301$ Mbps, $\beta_{l2f}^r=18.1730$ Mbps, from which the model has an overall latency $T^r=0.3582$ seconds.



#### 2.4. Results of the Order Phase with a \textit{BatchSize} of 50 in the Local Cluster

Table 4. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3, 9, 15 OSNs in a local cluster of 1 Gbps Ethereum network. The BatchSize is 50 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure             |                     |                     |                     | Our model |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ------------------- | ------------------- | ------------------- | ------------------- | --------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$         | $T_{l2f}^r$         | $T_{q}^r$           | $T^r$               | $T^r$     |
| 3    | 109             | 370     | 0.2946   | 0.0027  | 0.2294       | 0.0516 $\pm$ 0.0150 | 0.0987 $\pm$ 0.0444 | 0.0001 $\pm$ 0.0000 | 0.3824 $\pm$ 0.0481 | 0.3434    |
|      | 180             | 370     | 0.4865   | 0.0027  | 0.1389       | 0.0552 $\pm$ 0.0059 | 0.1653 $\pm$ 0.0330 | 0.0001 $\pm$ 0.0001 | 0.3622 $\pm$ 0.0346 | 0.3254    |
|      | 263             | 370     | 0.7108   | 0.0027  | 0.0951       | 0.0539 $\pm$ 0.0104 | 0.1960 $\pm$ 0.0464 | 0.0004 $\pm$ 0.0004 | 0.3480 $\pm$ 0.0473 | 0.3665    |
|      | 310             | 370     | 0.8378   | 0.0027  | 0.0806       | 0.0424 $\pm$ 0.0045 | 0.3253 $\pm$ 0.1288 | 0.0004 $\pm$ 0.0005 | 0.4515 $\pm$ 0.1325 | 0.4001    |
|      | 342             | 370     | 0.9243   | 0.0027  | 0.0731       | 0.0459 $\pm$ 0.0059 | 0.3355 $\pm$ 0.1071 | 0.0012 $\pm$ 0.0012 | 0.4584 $\pm$ 0.1088 | 0.4260    |
| 9    | 109             | 370     | 0.2946   | 0.0027  | 0.2294       | 0.0552 $\pm$ 0.0148 | 0.1572 $\pm$ 0.0743 | 0.0001 $\pm$ 0.0001 | 0.4258 $\pm$ 0.0666 | 0.3638    |
|      | 180             | 370     | 0.4865   | 0.0027  | 0.1389       | 0.0584 $\pm$ 0.0161 | 0.1724 $\pm$ 0.0298 | 0.0001 $\pm$ 0.0000 | 0.3725 $\pm$ 0.0433 | 0.3591    |
|      | 263             | 370     | 0.7108   | 0.0027  | 0.0951       | 0.0569 $\pm$ 0.0139 | 0.2622 $\pm$ 0.0489 | 0.0001 $\pm$ 0.0001 | 0.4169 $\pm$ 0.0367 | 0.4155    |
|      | 310             | 370     | 0.8378   | 0.0027  | 0.0806       | 0.0443 $\pm$ 0.0051 | 0.3315 $\pm$ 0.0684 | 0.0001 $\pm$ 0.0001 | 0.4593 $\pm$ 0.0660 | 0.4579    |
|      | 342             | 370     | 0.9243   | 0.0027  | 0.0731       | 0.0463 $\pm$ 0.0053 | 0.3633 $\pm$ 0.1094 | 0.0003 $\pm$ 0.0003 | 0.4857 $\pm$ 0.1046 | 0.4892    |
| 15   | 109             | 370     | 0.2946   | 0.0027  | 0.2294       | 0.0397 $\pm$ 0.0055 | 0.1511 $\pm$ 0.0274 | 0.0001 $\pm$ 0.0001 | 0.4230 $\pm$ 0.0281 | 0.3670    |
|      | 180             | 370     | 0.4865   | 0.0027  | 0.1389       | 0.0439 $\pm$ 0.0093 | 0.1961 $\pm$ 0.0141 | 0.0000 $\pm$ 0.0000 | 0.3816 $\pm$ 0.0154 | 0.3642    |
|      | 263             | 370     | 0.7108   | 0.0027  | 0.0951       | 0.0363 $\pm$ 0.0049 | 0.2428 $\pm$ 0.0263 | 0.0001 $\pm$ 0.0001 | 0.3769 $\pm$ 0.0294 | 0.4230    |
|      | 310             | 370     | 0.8378   | 0.0027  | 0.0806       | 0.0410 $\pm$ 0.0044 | 0.3506 $\pm$ 0.0448 | 0.0001 $\pm$ 0.0000 | 0.4750 $\pm$ 0.0480 | 0.4667    |
|      | 342             | 370     | 0.9243   | 0.0027  | 0.0731       | 0.0373 $\pm$ 0.0037 | 0.3549 $\pm$ 0.0713 | 0.0006 $\pm$ 0.0008 | 0.4685 $\pm$ 0.0711 | 0.4993    |

TABLE 4 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a local cluster of a 1 Gbit/s Ethernet network. The \textit{BatchSize} is 50 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 50 is $\mu^r=370$ transactions per second. This means that the service time of a transaction is $ T_s^r = 0.0027$ seconds. For example, if the number of ordering service nodes is $k=3$ and the transaction arrival rate is $\lambda^r=109$ transactions per second, we have a queueing latency of $T_q^r=0.0001$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.3824$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0516$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.0987$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=120.0235$ Mbps, $\beta_{l2f}^r=56.8093$~Mbps, from which the model has an overall latency $T^r=0.3434$~seconds.



#### 2.5. Results of the Order Phase with a \textit{BatchSize} of 2 in the Cloud Cluster

Table 5. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3,9,15 OSNs in a cloud cluster of 10 Gbps Ethereum network. The BatchSize is 2 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure             |                     |                     |                     | Our model |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ------------------- | ------------------- | ------------------- | ------------------- | --------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$         | $T_{l2f}^r$         | $T_{q}^r$           | $T^r$               | $T^r$     |
| 3    | 244             | 850     | 0.2871   | 0.0012  | 0.0041       | 0.0251 $\pm$ 0.0029 | 0.0172 $\pm$ 0.0019 | 0.0000 $\pm$ 0.0000 | 0.0475 $\pm$ 0.0041 | 0.0431    |
|      | 312             | 850     | 0.3671   | 0.0012  | 0.0032       | 0.0222 $\pm$ 0.0017 | 0.0282 $\pm$ 0.0049 | 0.0000 $\pm$ 0.0000 | 0.0548 $\pm$ 0.0055 | 0.0528    |
|      | 352             | 850     | 0.4141   | 0.0012  | 0.0028       | 0.0218 $\pm$ 0.0018 | 0.0287 $\pm$ 0.0026 | 0.0000 $\pm$ 0.0000 | 0.0546 $\pm$ 0.0034 | 0.0586    |
|      | 423             | 850     | 0.4976   | 0.0012  | 0.0024       | 0.0415 $\pm$ 0.0019 | 0.0559 $\pm$ 0.0149 | 0.0000 $\pm$ 0.0000 | 0.0707 $\pm$ 0.0145 | 0.0691    |
|      | 566             | 850     | 0.6659   | 0.0012  | 0.0018       | 0.0223 $\pm$ 0.0028 | 0.0659 $\pm$ 0.0225 | 0.0000 $\pm$ 0.0000 | 0.0912 $\pm$ 0.0208 | 0.0907    |
|      | 760             | 850     | 0.8941   | 0.0012  | 0.0013       | 0.0224 $\pm$ 0.0018 | 0.3475 $\pm$ 0.1373 | 0.0013 $\pm$ 0.0015 | 0.3738 $\pm$ 0.1352 | 0.1217    |
| 9    | 244             | 850     | 0.2871   | 0.0012  | 0.0041       | 0.0236 $\pm$ 0.0021 | 0.0215 $\pm$ 0.0034 | 0.0000 $\pm$ 0.0000 | 0.0505 $\pm$ 0.0033 | 0.0394    |
|      | 312             | 850     | 0.3671   | 0.0012  | 0.0032       | 0.0214 $\pm$ 0.0023 | 0.0292 $\pm$ 0.0077 | 0.0000 $\pm$ 0.0000 | 0.0550 $\pm$ 0.0061 | 0.0480    |
|      | 352             | 850     | 0.4141   | 0.0012  | 0.0028       | 0.0255 $\pm$ 0.0023 | 0.0274 $\pm$ 0.0047 | 0.0000 $\pm$ 0.0000 | 0.0569 $\pm$ 0.0054 | 0.0532    |
|      | 423             | 850     | 0.4976   | 0.0012  | 0.0024       | 0.0225 $\pm$ 0.0028 | 0.0386 $\pm$ 0.0075 | 0.0000 $\pm$ 0.0000 | 0.0647 $\pm$ 0.0073 | 0.0627    |
|      | 566             | 850     | 0.6659   | 0.0012  | 0.0018       | 0.0217 $\pm$ 0.0009 | 0.0518 $\pm$ 0.0073 | 0.0000 $\pm$ 0.0001 | 0.0765 $\pm$ 0.0069 | 0.0821    |
|      | 760             | 850     | 0.7318   | 0.0012  | 0.0013       | 0.0219 $\pm$ 0.0010 | 0.0668 $\pm$ 0.0232 | 0.0007 $\pm$ 0.0014 | 0.0945 $\pm$ 0.0279 | 0.1120    |
| 15   | 244             | 850     | 0.2871   | 0.0012  | 0.0041       | 0.0241 $\pm$ 0.0031 | 0.0232 $\pm$ 0.0046 | 0.0000 $\pm$ 0.0000 | 0.0526 $\pm$ 0.0032 | 0.0401    |
|      | 312             | 850     | 0.3671   | 0.0012  | 0.0032       | 0.0283 $\pm$ 0.0049 | 0.0261 $\pm$ 0.0028 | 0.0000 $\pm$ 0.0000 | 0.0588 $\pm$ 0.0036 | 0.0490    |
|      | 352             | 850     | 0.4141   | 0.0012  | 0.0028       | 0.0240 $\pm$ 0.0036 | 0.0314 $\pm$ 0.0098 | 0.0000 $\pm$ 0.0000 | 0.0594 $\pm$ 0.0066 | 0.0543    |
|      | 423             | 850     | 0.4976   | 0.0012  | 0.0024       | 0.0237 $\pm$ 0.0028 | 0.0307 $\pm$ 0.0076 | 0.0000 $\pm$ 0.0000 | 0.0580 $\pm$ 0.0071 | 0.0640    |
|      | 566             | 850     | 0.6659   | 0.0012  | 0.0018       | 0.0243 $\pm$ 0.0030 | 0.0450 $\pm$ 0.0135 | 0.0000 $\pm$ 0.0000 | 0.0723 $\pm$ 0.0120 | 0.0838    |
|      | 760             | 850     | 0.8941   | 0.0012  | 0.0013       | 0.0249 $\pm$ 0.0029 | 0.1291 $\pm$ 0.0939 | 0.0016 $\pm$ 0.0035 | 0.1580 $\pm$ 0.0945 | 0.1126    |

TABLE 5 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a cloud cluster of a 10 Gbit/s Ethernet network. The \textit{BatchSize} is 2 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 2 is $\mu^r=850$ transactions per second. This means that the service time of a transaction is $ T_s^r = 0.0012$ seconds. For example, if we let the number of ordering service nodes be $k=3$ and the transaction arrival rate be $\lambda^r=244$ transactions per second, we have the queueing latency $T_q^r=0.0000$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.0475$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0251$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.0172$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=456.5142$ Mbps, $\beta_{l2f}^r=452.0089$~Mbps, from which the model has an overall latency $T^r=0.0431$~seconds.



#### 2.6. Results of the Order Phase with a \textit{BatchSize} of 5 in the Cloud Cluster

Table 6. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3,9,15 OSNs in a cloud cluster of 10 Gbps Ethereum network. The BatchSize is 5 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure             |                     |                     |                     | Our model |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ------------------- | ------------------- | ------------------- | ------------------- | --------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$         | $T_{l2f}^r$         | $T_{q}^r$           | $T^r$               | $T^r$     |
| 3    | 244             | 1500    | 0.1627   | 0.0007  | 0.0102       | 0.0237 $\pm$ 0.0037 | 0.0104 $\pm$ 0.0037 | 0.0000 $\pm$ 0.0000 | 0.0450 $\pm$ 0.0069 | 0.0319    |
|      | 312             | 1500    | 0.2080   | 0.0007  | 0.0080       | 0.0228 $\pm$ 0.0014 | 0.0130 $\pm$ 0.0054 | 0.0000 $\pm$ 0.0000 | 0.0445 $\pm$ 0.0045 | 0.0355    |
|      | 352             | 1500    | 0.2347   | 0.0007  | 0.0071       | 0.0236 $\pm$ 0.0028 | 0.0174 $\pm$ 0.0073 | 0.0000 $\pm$ 0.0000 | 0.0487 $\pm$ 0.0053 | 0.0380    |
|      | 423             | 1500    | 0.2820   | 0.0007  | 0.0059       | 0.0205 $\pm$ 0.0007 | 0.0218 $\pm$ 0.0079 | 0.0000 $\pm$ 0.0000 | 0.0489 $\pm$ 0.0077 | 0.0429    |
|      | 566             | 1500    | 0.3773   | 0.0007  | 0.0044       | 0.0207 $\pm$ 0.0007 | 0.0213 $\pm$ 0.0081 | 0.0000 $\pm$ 0.0000 | 0.0470 $\pm$ 0.0082 | 0.0537    |
|      | 760             | 1500    | 0.5067   | 0.0007  | 0.0033       | 0.0202 $\pm$ 0.0014 | 0.0247 $\pm$ 0.0065 | 0.0000 $\pm$ 0.0000 | 0.0488 $\pm$ 0.0076 | 0.0692    |
| 9    | 244             | 1500    | 0.1627   | 0.0007  | 0.0102       | 0.0255 $\pm$ 0.0025 | 0.0112 $\pm$ 0.0028 | 0.0000 $\pm$ 0.0000 | 0.0476 $\pm$ 0.0059 | 0.0340    |
|      | 312             | 1500    | 0.2080   | 0.0007  | 0.0080       | 0.0262 $\pm$ 0.0038 | 0.0170 $\pm$ 0.0041 | 0.0000 $\pm$ 0.0000 | 0.0519 $\pm$ 0.0060 | 0.0382    |
|      | 352             | 1500    | 0.2347   | 0.0007  | 0.0071       | 0.0274 $\pm$ 0.0043 | 0.0197 $\pm$ 0.0081 | 0.0000 $\pm$ 0.0000 | 0.0548 $\pm$ 0.0070 | 0.0411    |
|      | 423             | 1500    | 0.2820   | 0.0007  | 0.0059       | 0.0239 $\pm$ 0.0022 | 0.0203 $\pm$ 0.0083 | 0.0000 $\pm$ 0.0000 | 0.0508 $\pm$ 0.0074 | 0.0466    |
|      | 566             | 1500    | 0.3773   | 0.0007  | 0.0044       | 0.0221 $\pm$ 0.0024 | 0.0285 $\pm$ 0.0055 | 0.0000 $\pm$ 0.0000 | 0.0556 $\pm$ 0.0051 | 0.0587    |
|      | 760             | 1500    | 0.5067   | 0.0007  | 0.0033       | 0.0204 $\pm$ 0.0022 | 0.0295 $\pm$ 0.0061 | 0.0000 $\pm$ 0.0000 | 0.0538 $\pm$ 0.0058 | 0.0759    |
| 15   | 244             | 1500    | 0.1627   | 0.0007  | 0.0102       | 0.0250 $\pm$ 0.0040 | 0.0104 $\pm$ 0.0009 | 0.0000 $\pm$ 0.0000 | 0.0463 $\pm$ 0.0045 | 0.0327    |
|      | 312             | 1500    | 0.2080   | 0.0007  | 0.0080       | 0.0256 $\pm$ 0.0033 | 0.0135 $\pm$ 0.0017 | 0.0000 $\pm$ 0.0000 | 0.0478 $\pm$ 0.0033 | 0.0366    |
|      | 352             | 1500    | 0.2347   | 0.0007  | 0.0071       | 0.0280 $\pm$ 0.0048 | 0.0167 $\pm$ 0.0021 | 0.0000 $\pm$ 0.0000 | 0.0525 $\pm$ 0.0022 | 0.0392    |
|      | 423             | 1500    | 0.2820   | 0.0007  | 0.0059       | 0.0228 $\pm$ 0.0022 | 0.0186 $\pm$ 0.0022 | 0.0000 $\pm$ 0.0000 | 0.0480 $\pm$ 0.0064 | 0.0444    |
|      | 566             | 1500    | 0.3773   | 0.0007  | 0.0044       | 0.0232 $\pm$ 0.0029 | 0.0224 $\pm$ 0.0046 | 0.0000 $\pm$ 0.0000 | 0.0507 $\pm$ 0.0077 | 0.0557    |
|      | 760             | 1500    | 0.5067   | 0.0007  | 0.0033       | 0.0207 $\pm$ 0.0011 | 0.0243 $\pm$ 0.0037 | 0.0000 $\pm$ 0.0000 | 0.0490 $\pm$ 0.0096 | 0.0719    |

Table 6 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a cloud cluster of a 10 Gbit/s Ethernet network. The \textit{BatchSize} is 5 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 5 is $\mu^r=1500$ transactions per second. This means that the service time of a transaction is $ T_s^r = 0.0007$ seconds. For example, if we let the number of ordering service nodes be $k=3$ and the transaction arrival rate be $\lambda^r=244$ transactions per second, we have the queueing latency $T_q^r=0.0000$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.0450$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0237$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.0104$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=488.6910$ Mbps, $\beta_{l2f}^r=1235.1806$~Mbps, from which the model has an overall latency $T^r=0.0319$~seconds.



#### 2.7. Results of the Validate Phase in the Local Cluster

Table 7. The effects of an HDD of 63 IOps on the throughput and latency in the validate phase. There is a committing peer in a local cluster of 1 Gbps Ethereum network. The BatchSize is 20, 50. And the BatchTimeout is 1.

|           | Measure derived |         |          |         | Measure             |                     |                     | Our model |
| --------- | --------------- | ------- | -------- | ------- | ------------------- | ------------------- | ------------------- | --------- |
| BatchSize | $\lambda^v$     | $\mu^v$ | $\rho^v$ | $T_s^v$ | $T_{comm}^v$        | $T_{q}^v$           | $T^v$               | $T^v$     |
| 20        | 65              | 85      | 0.7647   | 0.0118  | 0.6233 $\pm$ 0.1360 | 0.0010 $\pm$ 0.0003 | 0.6361 $\pm$ 0.1358 | 0.6351    |
|           | 82              | 85      | 0.9647   | 0.0118  | 0.8385 $\pm$ 0.1717 | 0.0180 $\pm$ 0.0126 | 0.8683 $\pm$ 0.1839 | 0.8149    |
| 50        | 65              | 185     | 0.3514   | 0.0054  | 0.2216 $\pm$ 0.0411 | 0.0007 $\pm$ 0.0005 | 0.2277 $\pm$ 0.0415 | 0.1543    |
|           | 109             | 185     | 0.5795   | 0.0054  | 0.2592 $\pm$ 0.0619 | 0.0008 $\pm$ 0.0003 | 0.2654 $\pm$ 0.0619 | 0.2342    |
|           | 142             | 185     | 0.7676   | 0.0054  | 0.2487 $\pm$ 0.0412 | 0.0027 $\pm$ 0.0020 | 0.2567 $\pm$ 0.0403 | 0.3318    |



Table~7 shows the effects of an HDD of 63 IOs per second on the throughput and latency in the validate phase. There is a committing peer in the local cluster of a 1~Gbit/s Ethernet network. The \textit{BatchSize} is 20, 50, respectively, and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency of a committing peer in the validate phase. The maximum throughput of the committing peer with a \textit{BatchSize} of 20 is $\mu^v=85$ transactions per second. This means that the service time of a transaction is $T_s^v = 0.0118$ seconds. For example, let the transaction arrival rate $\lambda^v=65$ transactions per second, we have the queueing latency $T_q^v=0.0010$ seconds. We measure the overall latency of a transaction spent in the validate phase $T^v=0.6361$ seconds. And when a \textit{BatchSize} of 20, the average effective network bandwidth is stable around $\beta^v=2.4478$ Mbps, from which the model has an overall latency $T^v=0.6351$ seconds.



#### 2.8. Results of the Validate Phase in the Cloud Cluster

Table 8. The effects of an SSD of 1490 IOps on the throughput and latency in the validate phase. There is a committing peer in a local cluster of 10 Gbps Ethereum network. The BatchSize is 2, 5. And the BatchTimeout is 1.

| BatchSize | $\lambda^v$ | $\mu^v$ | $\rho^v$ | $T_s^v$ | $T_{comm}^v$        | $T_{q}^v$           | $T^v$               | $T^v$  |
| --------- | ----------- | ------- | -------- | ------- | ------------------- | ------------------- | ------------------- | ------ |
| 2         | 78          | 180     | 0.4333   | 0.0056  | 0.0517 $\pm$ 0.0086 | 0.0005 $\pm$ 0.0001 | 0.0578 $\pm$ 0.0086 | 0.0602 |
|           | 90          | 180     | 0.5000   | 0.0056  | 0.0457 $\pm$ 0.0068 | 0.0005 $\pm$ 0.0004 | 0.0518 $\pm$ 0.0068 | 0.0685 |
|           | 150         | 180     | 0.8333   | 0.0056  | 0.1955 $\pm$ 0.0253 | 0.0049 $\pm$ 0.0082 | 0.2059 $\pm$ 0.0220 | 0.1146 |
| 5         | 78          | 1490    | 0.0523   | 0.0007  | 0.0347 $\pm$ 0.0100 | 0.0000 $\pm$ 0.0000 | 0.0354 $\pm$ 0.0100 | 0.0248 |
|           | 90          | 1490    | 0.0604   | 0.0007  | 0.0355 $\pm$ 0.0129 | 0.0000 $\pm$ 0.0000 | 0.0362 $\pm$ 0.0129 | 0.0285 |
|           | 150         | 1490    | 0.1007   | 0.0007  | 0.0417 $\pm$ 0.0085 | 0.0000 $\pm$ 0.0000 | 0.0424 $\pm$ 0.0085 | 0.0470 |
|           | 214         | 1490    | 0.1436   | 0.0007  | 0.0531 $\pm$ 0.0157 | 0.0000 $\pm$ 0.0000 | 0.0538 $\pm$ 0.0157 | 0.0668 |
|           | 240         | 1490    | 0.1611   | 0.0007  | 0.0828 $\pm$ 0.0099 | 0.0000 $\pm$ 0.0000 | 0.0834 $\pm$ 0.0099 | 0.0748 |

Table~8 shows the effects of an SSD of 1490 IOs per second on the throughput and latency in the validate phase. There is a committing peer in the cloud cluster of a 10~Gbit/s Ethernet network. The \textit{BatchSize} is 2, 5, respectively, and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency of a committing peer in the validate phase. The maximum throughput of the committing peer with a \textit{BatchSize} of 2 is $\mu^v=180$ transactions per second. This means that the service time of a transaction is $ T_s^v = 0.0056$ seconds. For example, let the transaction arrival rate $\lambda^v=65$ transactions per second, we have the queueing latency $T_q^v=0.0005$ seconds. We measure the overall latency of a transaction spent in the validate phase $T^v=0.0578$ seconds. And when a \textit{BatchSize} of 2, the average effective network bandwidth is stable around $\beta^v=33.7581$ Mbps, from which the model has an overall latency $T^v=0.0602$ seconds.
