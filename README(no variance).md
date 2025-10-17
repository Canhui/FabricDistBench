
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

|      | Measure derived |         |          |         |             |                  |                   | Measure          |          |          |                      |            |          |                        |              |          |        | Our Model |               |                 |
| ---- | --------------- | ------- | -------- | ------- | ----------- | ---------------- | ----------------- | ---------------- | -------- | -------- | -------------------- | ---------- | -------- | ---------------------- | ------------ | -------- | ------ | --------- | ------------- | --------------- |
| $c$  | $\lambda^e$     | $\mu^e$ | $\rho^e$ | $T_s^e$ | Our $T_q^e$ | $M/M/1$  $T_q^e$ | $M/H_2/1$ $T_q^e$ | Our $T_{comm}^e$ | Our BW   | avg BW   | $M/M/1$ $T_{comm}^e$ | $M/M/1$ BW | avg BW   | $M/H_2/1$ $T_{comm}^e$ | $M/H_2/1$ BW | avg BW   | $T^e$  | Our $T^e$ | $M/M/1$ $T^e$ | $M/H_2/1$ $T^e$ |
| 1    | 209             | 780     | 0.2679   | 0.0013  | 0.0002      | 0.0005           | 0.0004            | 0.2837           | 34.5325  | 29.3380  | 0.2834               | 34.5691    | 29.5817  | 0.2835                 | 34.5569      | 29.4589  | 0.2852 |           |               |                 |
| 1    | 287             | 780     | 0.3679   | 0.0013  | 0.0004      | 0.0007           | 0.0006            | 0.4116           | 32.6849  | 29.3380  | 0.4113               | 32.7088    | 29.5817  | 0.4114                 | 32.7008      | 29.4589  | 0.4133 |           |               |                 |
| 1    | 337             | 780     | 0.4321   | 0.0013  | 0.0005      | 0.0010           | 0.0007            | 0.5830           | 27.0958  | 29.3380  | 0.5825               | 27.1191    | 29.5817  | 0.5828                 | 27.1051      | 29.4589  | 0.5848 |           |               |                 |
| 1    | 426             | 780     | 0.5462   | 0.0013  | 0.0007      | 0.0015           | 0.0012            | 0.7667           | 26.0451  | 29.3380  | 0.7659               | 26.0723    | 29.5817  | 0.7662                 | 26.0621      | 29.4589  | 0.7687 |           |               |                 |
| 1    | 524             | 780     | 0.6718   | 0.0013  | 0.0013      | 0.0026           | 0.0020            | 0.9018           | 27.2372  | 29.3380  | 0.9005               | 27.2765    | 29.5817  | 0.9011                 | 27.2584      | 29.4589  | 0.9044 |           |               |                 |
| 1    | 613             | 780     | 0.7859   | 0.0013  | 0.0024      | 0.0047           | 0.0035            | 1.0863           | 26.4516  | 29.3380  | 1.0840               | 26.5077    | 29.5817  | 1.0852                 | 26.4784      | 29.4589  | 1.0900 |           |               |                 |
| 1    | 725             | 780     | 0.9295   | 0.0013  | 0.0084      | 0.0169           | 0.0127            | 1.2250           | 27.7423  | 29.3380  | 1.2165               | 27.9362    | 29.5817  | 1.2207                 | 27.8401      | 29.4589  | 1.2347 |           |               |                 |
| 1    | 770             | 780     | 0.9872   | 0.0013  | 0.0494      | 0.0987           | 0.0740            | 1.0966           | 32.9142  | 29.3380  | 1.0473               | 34.4636    | 29.5817  | 1.0720                 | 33.6695      | 29.4589  | 1.1473 |           |               |                 |
| 2    | 426             | 780     | 0.2731   | 0.0013  | 0.0006      | 0.0002           | 0.0002            | 0.2388           | 83.6212  | 79.5231  | 0.2392               | 83.4814    | 79.9621  | 0.2392                 | 83.4814      | 79.8754  | 0.2407 |           |               |                 |
| 2    | 613             | 780     | 0.3929   | 0.0013  | 0.0001      | 0.0004           | 0.0003            | 0.3319           | 86.5754  | 79.5231  | 0.3316               | 86.6537    | 79.9621  | 0.3317                 | 86.6276      | 79.8754  | 0.3333 |           |               |                 |
| 2    | 852             | 780     | 0.5462   | 0.0013  | 0.0003      | 0.0007           | 0.0005            | 0.4754           | 84.0082  | 79.5231  | 0.4750               | 84.0789    | 79.9621  | 0.4752                 | 84.0436      | 79.8754  | 0.4770 |           |               |                 |
| 2    | 1095            | 780     | 0.7019   | 0.0013  | 0.0006      | 0.0015           | 0.0011            | 0.7336           | 69.9675  | 79.5231  | 0.7327               | 70.0534    | 79.9621  | 0.7331                 | 70.0152      | 79.8754  | 0.7355 |           |               |                 |
| 2    | 1278            | 780     | 0.8192   | 0.0013  | 0.0013      | 0.0029           | 0.0022            | 0.7539           | 79.4618  | 79.5231  | 0.7323               | 81.8056    | 79.9621  | 0.7330                 | 81.7275      | 79.8754  | 0.7565 |           |               |                 |
| 2    | 1338            | 780     | 0.8577   | 0.0013  | 0.0018      | 0.0039           | 0.0029            | 0.7817           | 80.2338  | 79.5231  | 0.7796               | 80.4499    | 79.9621  | 0.7806                 | 80.3468      | 79.8754  | 0.7848 |           |               |                 |
| 2    | 1446            | 780     | 0.9269   | 0.0013  | 0.0039      | 0.0081           | 0.0061            | 0.8588           | 78.9255  | 79.5231  | 0.8546               | 79.3134    | 79.9621  | 0.8566                 | 79.1282      | 79.8754  | 0.8640 |           |               |                 |
| 2    | 1478            | 780     | 0.9474   | 0.0013  | 0.0056      | 0.0116           | 0.0087            | 0.9440           | 73.3912  | 79.5231  | 0.9380               | 73.8606    | 79.9621  | 0.9409                 | 73.6330      | 79.8754  | 0.9509 |           |               |                 |
| 4    | 426             | 780     | 0.1365   | 0.0013  | 0.0000      | 0.0000           | 0.0000            | 0.1774           | 112.5634 | 139.4768 | 0.1774               | 112.5634   | 139.5167 | 0.1774                 | 112.5634     | 139.5076 | 0.1787 |           |               |                 |
| 4    | 613             | 780     | 0.1965   | 0.0013  | 0.0000      | 0.0000           | 0.0000            | 0.2162           | 132.9065 | 139.4768 | 0.2162               | 132.9065   | 139.5167 | 0.2162                 | 132.9065     | 139.5076 | 0.2175 |           |               |                 |
| 4    | 852             | 780     | 0.2731   | 0.0013  | 0.0000      | 0.0000           | 0.0000            | 0.3174           | 125.8270 | 139.4768 | 0.3174               | 125.8270   | 139.5167 | 0.3174                 | 125.8270     | 139.5076 | 0.3187 |           |               |                 |
| 4    | 1095            | 780     | 0.3510   | 0.0013  | 0.0000      | 0.0001           | 0.0001            | 0.3393           | 151.2765 | 139.4768 | 0.3392               | 151.3211   | 139.5167 | 0.3392                 | 151.3211     | 139.5076 | 0.3406 |           |               |                 |
| 4    | 1278            | 780     | 0.4096   | 0.0013  | 0.0000      | 0.0002           | 0.0001            | 0.3854           | 155.4392 | 139.4768 | 0.3852               | 155.5199   | 139.5167 | 0.3853                 | 155.4795     | 139.5076 | 0.3867 |           |               |                 |
| 4    | 1338            | 780     | 0.4288   | 0.0013  | 0.0000      | 0.0002           | 0.0001            | 0.4373           | 143.4227 | 139.4768 | 0.4371               | 143.4883   | 139.5167 | 0.4372                 | 143.4555     | 139.5076 | 0.4386 |           |               |                 |
| 4    | 1446            | 780     | 0.4635   | 0.0013  | 0.0000      | 0.0002           | 0.0002            | 0.4136           | 163.8812 | 139.4768 | 0.4134               | 163.9604   | 139.5167 | 0.4134                 | 163.9604     | 139.5076 | 0.4149 |           |               |                 |
| 4    | 1478            | 780     | 0.4737   | 0.0013  | 0.0000      | 0.0002           | 0.0002            | 0.5309           | 130.4977 | 139.4768 | 0.5307               | 130.5469   | 139.5167 | 0.5307                 | 130.5469     | 139.5076 | 0.5322 |           |               |                 |



Table 1 shows the throughput and latency of an endorsing peer with $c=1,2,4$ CPU core(s) in the local cluster. It validates the model of throughput and latency in the execute phase. The maximum throughput of an endorsing peer with a single CPU core is $\mu^e=780$ transactions per second, meaning that the service time of a transaction is $T_s^e=0.0013$ seconds. We use two examples to explain the table. In example one, let the number of CPU cores $c=1$ and the transaction arrival rate $\lambda^e=209$ transactions per second, we have the queueing latency $T_q^e=0.0002$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.2852$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.2852-0.0013-0.0002=0.2837$ seconds. 



lambda*2*3kB*8/1024/T_{comm}



_And when $c=1$, the average effective network bandwidth is stable around $\beta^e=29.8184$ Mbps, from which the model has an overall latency $T^e=0.3307$ seconds. In example two, let the number of CPU cores $c=2$ and the transaction arrival rate $\lambda^e=426$ transactions per second, we have the queueing latency $T_q^e=0.0007$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.2407$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.2387$ seconds. And when $c=2$, the average effective network bandwidth is stable around $\beta^e=82.4838$ Mbps, from which the model has an overall latency $T^e=0.2441$ seconds.   





#### 2.2. Results of the Execute Phase in the Cloud Cluster

Table 2. The throughput and latency of an endorsing peer with $c=$1,2,4 CPU cores in the cloud cluster.

|      | Measure derived |         |          |         |             |                 |                   | Measure          |          |          |                      |            |          |                        |              |          |        | Our model |               |                 |
| ---- | --------------- | ------- | -------- | ------- | ----------- | --------------- | ----------------- | ---------------- | -------- | -------- | -------------------- | ---------- | -------- | ---------------------- | ------------ | -------- | ------ | --------- | ------------- | --------------- |
| $c$  | $\lambda^e$     | $\mu^e$ | $\rho^e$ | $T_s^e$ | Our $T_q^e$ | $M/M/1$ $T_q^e$ | $M/H_2/1$ $T_q^e$ | Our $T_{comm}^e$ | Our BW   | avg BW   | $M/M/1$ $T_{comm}^e$ | $M/M/1$ BW | avg BW   | $M/H_2/1$ $T_{comm}^e$ | $M/H_2/1$ BW | avg BW   | $T^e$  | Our $T^e$ | $M/M/1$ $T^e$ | $M/H_2/1$ $T^e$ |
| 1    | 214             | 470     | 0.4553   | 0.0021  | 0.0009      | 0.0018          | 0.0013            | 0.2125           | 47.2059  | 42.5357  | 0.2116               | 47.4067    | 43.4146  | 0.2121                 | 47.2949      | 42.9619  | 0.2155 |           |               |                 |
| 1    | 244             | 470     | 0.5191   | 0.0021  | 0.0011      | 0.0023          | 0.0017            | 0.2446           | 46.7600  | 42.5357  | 0.2434               | 46.9906    | 43.4146  | 0.2440                 | 46.8750      | 42.9619  | 0.2478 |           |               |                 |
| 1    | 312             | 470     | 0.6638   | 0.0021  | 0.0021      | 0.0042          | 0.0032            | 0.3178           | 46.0195  | 42.5357  | 0.3157               | 46.3256    | 43.4146  | 0.3167                 | 46.1793      | 42.9619  | 0.3220 |           |               |                 |
| 1    | 352             | 470     | 0.7489   | 0.0021  | 0.0032      | 0.0063          | 0.0048            | 0.4165           | 39.6158  | 42.5357  | 0.4134               | 39.9129    | 43.4146  | 0.4149                 | 39.7686      | 42.9619  | 0.4218 |           |               |                 |
| 1    | 423             | 470     | 0.9000   | 0.0021  | 0.0096      | 0.0191          | 0.0144            | 0.5234           | 37.8833  | 42.5357  | 0.5139               | 38.5836    | 43.4146  | 0.5186                 | 38.2339      | 42.9619  | 0.5351 |           |               |                 |
| 1    | 460             | 470     | 0.9787   | 0.0021  | 0.0489      | 0.0979          | 0.0734            | 0.5715           | 37.7297  | 42.5357  | 0.5225               | 41.2679    | 43.4146  | 0.547                  | 39.4196      | 42.9619  | 0.6225 |           |               |                 |
| 2    | 244             | 470     | 0.2596   | 0.0021  | 0.0000      | 0.0003          | 0.0002            | 0.0879           | 130.1195 | 133.7755 | 0.0876               | 130.5651   | 134.3903 | 0.0877                 | 130.4162     | 134.1423 | 0.0900 |           |               |                 |
| 2    | 312             | 470     | 0.3319   | 0.0021  | 0.0001      | 0.0005          | 0.0003            | 0.1052           | 139.0209 | 133.7755 | 0.1048               | 139.5515   | 134.3903 | 0.105                  | 139.2857     | 134.1423 | 0.1074 |           |               |                 |
| 2    | 352             | 470     | 0.3745   | 0.0021  | 0.0001      | 0.0006          | 0.0004            | 0.1278           | 129.1080 | 133.7755 | 0.1273               | 129.6151   | 134.3903 | 0.1275                 | 129.4118     | 134.1423 | 0.1300 |           |               |                 |
| 2    | 423             | 470     | 0.4500   | 0.0021  | 0.0002      | 0.0008          | 0.0006            | 0.1663           | 119.2311 | 133.7755 | 0.1657               | 119.6628   | 134.3903 | 0.1659                 | 119.5185     | 134.1423 | 0.1686 |           |               |                 |
| 2    | 460             | 470     | 0.4894   | 0.0021  | 0.0003      | 0.0010          | 0.0007            | 0.1709           | 126.1703 | 133.7755 | 0.1702               | 126.6892   | 134.3903 | 0.1705                 | 126.4663     | 134.1423 | 0.1733 |           |               |                 |
| 2    | 566             | 470     | 0.6021   | 0.0021  | 0.0006      | 0.0016          | 0.0012            | 0.1908           | 139.0527 | 133.7755 | 0.1898               | 139.7853   | 134.3903 | 0.1902                 | 139.4913     | 134.1423 | 0.1935 |           |               |                 |
| 2    | 670             | 470     | 0.7128   | 0.0021  | 0.0011      | 0.0026          | 0.0020            | 0.2043           | 153.7261 | 133.7755 | 0.2028               | 154.8632   | 134.3903 | 0.2034                 | 154.4063     | 134.1423 | 0.2075 |           |               |                 |
| 4    | 244             | 470     | 0.1298   | 0.0021  | 0.0000      | 0.0000          | 0.0000            | 0.0685           | 166.9708 | 226.2017 | 0.0685               | 166.9708   | 226.4957 | 0.0685                 | 166.9708     | 226.3851 | 0.0706 |           |               |                 |
| 4    | 312             | 470     | 0.1660   | 0.0021  | 0.0000      | 0.0001          | 0.0000            | 0.0753           | 194.2231 | 226.2017 | 0.0752               | 194.4814   | 226.4957 | 0.0753                 | 194.2231     | 226.3851 | 0.0774 |           |               |                 |
| 4    | 352             | 470     | 0.1872   | 0.0021  | 0.0000      | 0.0001          | 0.0000            | 0.0767           | 215.1239 | 226.2017 | 0.0766               | 215.4047   | 226.4957 | 0.0767                 | 215.1239     | 226.3851 | 0.0788 |           |               |                 |
| 4    | 423             | 470     | 0.2250   | 0.0021  | 0.0000      | 0.0001          | 0.0001            | 0.0796           | 249.0970 | 226.2017 | 0.0795               | 249.4104   | 226.4957 | 0.0795                 | 249.4104     | 226.3851 | 0.0817 |           |               |                 |
| 4    | 460             | 470     | 0.2447   | 0.0021  | 0.0000      | 0.0001          | 0.0001            | 0.0922           | 233.8666 | 226.2017 | 0.0921               | 234.1205   | 226.4957 | 0.0921                 | 234.1205     | 226.3851 | 0.0943 |           |               |                 |
| 4    | 566             | 470     | 0.3011   | 0.0021  | 0.0000      | 0.0002          | 0.0001            | 0.1065           | 249.1197 | 226.2017 | 0.1063               | 249.5884   | 226.4957 | 0.1064                 | 249.3539     | 226.3851 | 0.1086 |           |               |                 |
| 4    | 670             | 470     | 0.3564   | 0.0021  | 0.0000      | 0.0002          | 0.0002            | 0.1142           | 275.0109 | 226.2017 | 0.114                | 275.4934   | 226.4957 | 0.114                  | 275.4934     | 226.3851 | 0.1163 |           |               |                 |

Table 2 shows the throughput and latency of an endorsing peer with $c=1,2,4$ CPU core(s) in the cloud cluster. It validates the model of throughput and latency in the execute phase. The maximum throughput of an endorsing peer with a single CPU core is $\mu^e=470$ transactions per second, meaning that the service time of a transaction is $T_s^e=0.0021$ seconds. We use two examples to explain the table. In Example 1, let the number of CPU cores $c=1$ and the transaction arrival rate $\lambda^e=214$ transactions per second. We then have the queueing latency $T_q^e=0.0020$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.2155$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.2114$ seconds. And when $c=1$, the average effective network bandwidth is stable around $\beta^e=43.2167$ Mbps, from which the model has an overall latency $T^e=0.2362$ seconds. In Example 2, let the number of CPU cores be $c=2$ and the transaction arrival rate be $\lambda^e=244$ transactions per second; we have the queueing latency $T_q^e=0.0013$ seconds. We measure the overall latency of a transaction spent in the execute phase $T^e=0.0900$ seconds, from which the communication latency of a transaction spent in the execute phase $T_{comm}^e=0.0866$ seconds. And when $c=2$, the average effective network bandwidth is stable around $\beta^e=135.6649$ Mbps, from which the model has an overall latency $T^e=0.0877$ seconds. 



lambda*2*3kB*8/1024/T_{comm}



#### 2.3. Results of the Order Phase with a \textit{BatchSize} of 20 in the Local Cluster

Table 3. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3,9,15 OSNs in a local cluster of 1 Gbit/s Ethereum network. The BatchSize is 20 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure     |          |         |                 |          |          |                     |            |          |             |                 |        | Our model |               |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ----------- | -------- | ------- | --------------- | -------- | -------- | ------------------- | ---------- | -------- | ----------- | --------------- | ------ | --------- | ------------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$ | BW       | avg BW  | Our $T_{l2f}^r$ | Our BW   | avg BW   | $M/M/1$ $T_{l2f}^r$ | $M/M/1$ BW | avg BW   | Our $T_q^r$ | $M/M/1$ $T_q^r$ | $T^r$  | Our $T^r$ | $M/M/1$ $T^r$ |
| 3    | 70              | 190     | 0.3684   | 0.0053  | 0.1429       | 0.0403      | 40.7103  | 55.1617 | 0.1928          | 17.0189  | 17.4942  | 0.1901              | 17.2607    | 17.7970  | 0.0004      | 0.0031          | 0.3817 | 0.3582    |               |
| 3    | 109             | 190     | 0.5737   | 0.0053  | 0.0917       | 0.0521      | 49.0343  | 55.1617 | 0.2818          | 18.1312  | 17.4942  | 0.277               | 18.4454    | 17.7970  | 0.0023      | 0.0071          | 0.4332 | 0.4239    |               |
| 3    | 180             | 190     | 0.9474   | 0.0053  | 0.0556       | 0.0557      | 75.7406  | 55.1617 | 0.4868          | 17.3326  | 17.4942  | 0.4771              | 17.6850    | 17.7970  | 0.0850      | 0.0947          | 0.6884 | 0.6002    |               |
| 9    | 70              | 190     | 0.3684   | 0.0053  | 0.1429       | 0.0422      | 38.8774  | 64.9560 | 0.2395          | 54.8017  | 50.8648  | 0.2368              | 55.4265    | 51.4904  | 0.0004      | 0.0031          | 0.4303 | 0.4248    |               |
| 9    | 109             | 190     | 0.5737   | 0.0053  | 0.0917       | 0.0466      | 54.8216  | 64.9560 | 0.382           | 53.5013  | 50.8648  | 0.3772              | 54.1821    | 51.4904  | 0.0023      | 0.0071          | 0.5279 | 0.5284    |               |
| 9    | 180             | 190     | 0.9474   | 0.0053  | 0.0556       | 0.0417      | 101.1691 | 64.9560 | 0.762           | 44.2913  | 50.8648  | 0.7523              | 44.8624    | 51.4904  | 0.0850      | 0.0947          | 0.9496 | 0.7860    |               |
| 15   | 70              | 190     | 0.3684   | 0.0053  | 0.1429       | 0.0522      | 31.4296  | 52.4210 | 0.2191          | 104.8323 | 106.4712 | 0.2164              | 106.1402   | 108.0775 | 0.0004      | 0.0031          | 0.4199 | 0.3916    |               |
| 15   | 109             | 190     | 0.5737   | 0.0053  | 0.0917       | 0.0549      | 46.5335  | 52.4210 | 0.2722          | 131.3947 | 106.4712 | 0.2674              | 133.7533   | 108.0775 | 0.0023      | 0.0071          | 0.4264 | 0.4763    |               |
| 15   | 180             | 190     | 0.9474   | 0.0053  | 0.0556       | 0.0532      | 79.2998  | 52.4210 | 0.71            | 83.1866  | 106.4712 | 0.7003              | 84.3389    | 108.0775 | 0.0850      | 0.0947          | 0.9091 | 0.6988    |               |

Table 3 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a local cluster of a 1 Gbit/s Ethernet network. The \textit{BatchSize} is 20 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 20 is $\mu^r=190$ transactions per second. This means that the service time of a transaction is $T_s^r=0.0053$ seconds. For example, if we let the number of ordering service nodes be $k=3$ and the transaction arrival rate be $\lambda^r=70$ transactions per second, we have a queueing latency of $T_q^r=0.0009$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.3817$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0403$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.1924$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=57.3301$ Mbps, $\beta_{l2f}^r=18.1730$ Mbps, from which the model has an overall latency $T^r=0.3582$ seconds.



lambda*3kB*8/1024/T_{c2l}

lambda*3*8*(k-1)/1024/T_{l2f}



#### 2.4. Results of the Order Phase with a \textit{BatchSize} of 50 in the Local Cluster

Table 4. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3, 9, 15 OSNs in a local cluster of 1 Gbps Ethereum network. The BatchSize is 50 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure     |          |          |                 |          |          |                     |            |          |               |                   |        | Our model |               |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ----------- | -------- | -------- | --------------- | -------- | -------- | ------------------- | ---------- | -------- | ------------- | ----------------- | ------ | --------- | ------------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$ | BW       | avg BW   | Our $T_{l2f}^r$ | Our BW   | avg BW   | $M/M/1$ $T_{l2f}^r$ | $M/M/1$ BW | avg BW   | Our $T_{q}^r$ | $M/M/1$ $T_{q}^r$ | $T^r$  | Our $T^r$ | $M/M/1$ $T^r$ |
| 3    | 109             | 370     | 0.2946   | 0.0027  | 0.2294       | 0.0516      | 49.5094  | 117.2577 | 0.0987          | 51.7667  | 52.9649  | 0.0976              | 52.3502    | 53.7112  | 0.0000        | 0.0011            | 0.3824 | 0.3434    |               |
| 3    | 180             | 370     | 0.4865   | 0.0027  | 0.1389       | 0.0552      | 76.4266  | 117.2577 | 0.1648          | 51.1984  | 52.9649  | 0.1628              | 51.8274    | 53.7112  | 0.0006        | 0.0026            | 0.3622 | 0.3254    |               |
| 3    | 263             | 370     | 0.7108   | 0.0027  | 0.0951       | 0.0539      | 114.3611 | 117.2577 | 0.1929          | 63.9094  | 52.9649  | 0.1897              | 64.9875    | 53.7112  | 0.0034        | 0.0066            | 0.3480 | 0.3665    |               |
| 3    | 310             | 370     | 0.8378   | 0.0027  | 0.0806       | 0.0424      | 171.3591 | 117.2577 | 0.316           | 45.9850  | 52.9649  | 0.3118              | 46.6044    | 53.7112  | 0.0098        | 0.0140            | 0.4515 | 0.4001    |               |
| 3    | 342             | 370     | 0.9243   | 0.0027  | 0.0731       | 0.0459      | 174.6324 | 117.2577 | 0.3085          | 51.9652  | 52.9649  | 0.3037              | 52.7865    | 53.7112  | 0.0282        | 0.0330            | 0.4584 | 0.4260    |               |
| 9    | 109             | 370     | 0.2946   | 0.0027  | 0.2294       | 0.0552      | 46.2806  | 112.7968 | 0.1385          | 147.5632 | 181.2399 | 0.1374              | 148.7445   | 183.4481 | 0.0000        | 0.0011            | 0.4258 | 0.3638    |               |
| 9    | 180             | 370     | 0.4865   | 0.0027  | 0.1389       | 0.0584      | 72.2389  | 112.7968 | 0.1719          | 196.3351 | 181.2399 | 0.1699              | 198.6463   | 183.4481 | 0.0006        | 0.0026            | 0.3725 | 0.3591    |               |
| 9    | 263             | 370     | 0.7108   | 0.0027  | 0.0951       | 0.0569      | 108.3315 | 112.7968 | 0.2588          | 190.5429 | 181.2399 | 0.2556              | 192.9284   | 183.4481 | 0.0034        | 0.0066            | 0.4169 | 0.4155    |               |
| 9    | 310             | 370     | 0.8378   | 0.0027  | 0.0806       | 0.0443      | 164.0096 | 112.7968 | 0.3219          | 180.5685 | 181.2399 | 0.3177              | 182.9556   | 183.4481 | 0.0098        | 0.0140            | 0.4593 | 0.4579    |               |
| 9    | 342             | 370     | 0.9243   | 0.0027  | 0.0731       | 0.0463      | 173.1237 | 112.7968 | 0.3354          | 191.1896 | 181.2399 | 0.3306              | 193.9655   | 183.4481 | 0.0282        | 0.0330            | 0.4857 | 0.4892    |               |
| 15   | 109             | 370     | 0.2946   | 0.0027  | 0.2294       | 0.0397      | 64.3498  | 144.4729 | 0.1512          | 236.5451 | 308.0953 | 0.1501              | 238.2786   | 311.8089 | 0.0000        | 0.0011            | 0.4230 | 0.3670    |               |
| 15   | 180             | 370     | 0.4865   | 0.0027  | 0.1389       | 0.0439      | 96.0991  | 144.4729 | 0.1955          | 302.1100 | 308.0953 | 0.1935              | 305.2326   | 311.8089 | 0.0006        | 0.0026            | 0.3816 | 0.3642    |               |
| 15   | 263             | 370     | 0.7108   | 0.0027  | 0.0951       | 0.0363      | 169.8089 | 144.4729 | 0.2394          | 360.4715 | 308.0953 | 0.2362              | 365.3551   | 311.8089 | 0.0034        | 0.0066            | 0.3769 | 0.4230    |               |
| 15   | 310             | 370     | 0.8378   | 0.0027  | 0.0806       | 0.0410      | 177.2104 | 144.4729 | 0.3409          | 298.3830 | 308.0953 | 0.3367              | 302.1050   | 311.8089 | 0.0098        | 0.0140            | 0.4750 | 0.4667    |               |
| 15   | 342             | 370     | 0.9243   | 0.0027  | 0.0731       | 0.0373      | 214.8961 | 144.4729 | 0.3272          | 342.9668 | 308.0953 | 0.3224              | 348.0730   | 311.8089 | 0.0282        | 0.0330            | 0.4685 | 0.4993    |               |

TABLE 4 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a local cluster of a 1 Gbit/s Ethernet network. The \textit{BatchSize} is 50 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 50 is $\mu^r=370$ transactions per second. This means that the service time of a transaction is $ T_s^r = 0.0027$ seconds. For example, if the number of ordering service nodes is $k=3$ and the transaction arrival rate is $\lambda^r=109$ transactions per second, we have a queueing latency of $T_q^r=0.0001$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.3824$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0516$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.0987$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=120.0235$ Mbps, $\beta_{l2f}^r=56.8093$~Mbps, from which the model has an overall latency $T^r=0.3434$~seconds.



lambda*3kB*8/1024/T_{c2l}

lambda*3*8*(k-1)/1024/T_{l2f}



#### 2.5. Results of the Order Phase with a \textit{BatchSize} of 2 in the Cloud Cluster

Table 5. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3,9,15 OSNs in a cloud cluster of 10 Gbps Ethereum network. The BatchSize is 2 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure     |          |          |                 |           |           |                     |            |           |               |                   |        | Our model |               |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ----------- | -------- | -------- | --------------- | --------- | --------- | ------------------- | ---------- | --------- | ------------- | ----------------- | ------ | --------- | ------------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$ | BW       | avg BW   | Our $T_{l2f}^r$ | Our BW    | avg BW    | $M/M/1$ $T_{l2f}^r$ | $M/M/1$ BW | avg BW    | Our $T_{q}^r$ | $M/M/1$ $T_{q}^r$ | $T^r$  | Our $T^r$ | $M/M/1$ $T^r$ |
| 3    | 244             | 850     | 0.2871   | 0.0012  | 0.0041       | 0.0251      | 227.8386 | 427.4393 | 0.0171          | 668.8596  | 509.3831  | 0.0167              | 684.8802   | 523.1553  | 0.0000        | 0.0004            | 0.0475 | 0.0431    |               |
| 3    | 312             | 850     | 0.3671   | 0.0012  | 0.0032       | 0.0222      | 329.3919 | 427.4393 | 0.0282          | 518.6170  | 509.3831  | 0.0276              | 529.8913   | 523.1553  | 0.0000        | 0.0006            | 0.0548 | 0.0528    |               |
| 3    | 352             | 850     | 0.4141   | 0.0012  | 0.0028       | 0.0218      | 378.4404 | 427.4393 | 0.0287          | 574.9129  | 509.3831  | 0.0280              | 589.2857   | 523.1553  | 0.0001        | 0.0008            | 0.0546 | 0.0586    |               |
| 3    | 423             | 850     | 0.4976   | 0.0012  | 0.0024       | 0.0415      | 238.8931 | 427.4393 | 0.0254          | 780.6348  | 509.3831  | 0.0244              | 812.6281   | 523.1553  | 0.0002        | 0.0012            | 0.0707 | 0.0691    |               |
| 3    | 566             | 850     | 0.6659   | 0.0012  | 0.0018       | 0.0223      | 594.8711 | 427.4393 | 0.0649          | 408.8020  | 509.3831  | 0.0636              | 417.1580   | 523.1553  | 0.0010        | 0.0023            | 0.0912 | 0.0907    |               |
| 3    | 760             | 850     | 0.8941   | 0.0012  | 0.0013       | 0.0224      | 795.2009 | 427.4393 | 0.3410          | 104.4721  | 509.3831  | 0.3390              | 105.0885   | 523.1553  | 0.0079        | 0.0099            | 0.3738 | 0.1217    |               |
| 9    | 244             | 850     | 0.2871   | 0.0012  | 0.0041       | 0.0236      | 242.3199 | 462.1425 | 0.0216          | 2118.0556 | 2164.0940 | 0.0212              | 2158.0189  | 2219.3968 | 0.0000        | 0.0004            | 0.0505 | 0.0394    |               |
| 9    | 312             | 850     | 0.3671   | 0.0012  | 0.0032       | 0.0214      | 341.7056 | 462.1425 | 0.0292          | 2003.4247 | 2164.0940 | 0.0286              | 2045.4545  | 2219.3968 | 0.0000        | 0.0006            | 0.0550 | 0.0480    |               |
| 9    | 352             | 850     | 0.4141   | 0.0012  | 0.0028       | 0.0255      | 323.5294 | 462.1425 | 0.0273          | 2417.5824 | 2164.0940 | 0.0266              | 2481.2030  | 2219.3968 | 0.0001        | 0.0008            | 0.0569 | 0.0532    |               |
| 9    | 423             | 850     | 0.4976   | 0.0012  | 0.0024       | 0.0225      | 440.6250 | 462.1425 | 0.0384          | 2065.4297 | 2164.0940 | 0.0374              | 2120.6551  | 2219.3968 | 0.0002        | 0.0012            | 0.0647 | 0.0627    |               |
| 9    | 566             | 850     | 0.6659   | 0.0012  | 0.0018       | 0.0217      | 611.3191 | 462.1425 | 0.0508          | 2089.0748 | 2164.0940 | 0.0495              | 2143.9394  | 2219.3968 | 0.0010        | 0.0023            | 0.0765 | 0.0821    |               |
| 9    | 760             | 850     | 0.7318   | 0.0012  | 0.0013       | 0.0219      | 813.3562 | 462.1425 | 0.0622          | 2290.9968 | 2164.0940 | 0.0602              | 2367.1096  | 2219.3968 | 0.0079        | 0.0099            | 0.0945 | 0.1120    |               |
| 15   | 244             | 850     | 0.2871   | 0.0012  | 0.0041       | 0.0241      | 237.2925 | 419.8369 | 0.0232          | 3450.9698 | 3644.5789 | 0.0228              | 3511.5132  | 3736.8610 | 0.0000        | 0.0004            | 0.0526 | 0.0401    |               |
| 15   | 312             | 850     | 0.3671   | 0.0012  | 0.0032       | 0.0283      | 258.3922 | 419.8369 | 0.0261          | 3922.4138 | 3644.5789 | 0.0255              | 4014.7059  | 3736.8610 | 0.0000        | 0.0006            | 0.0588 | 0.0490    |               |
| 15   | 352             | 850     | 0.4141   | 0.0012  | 0.0028       | 0.0240      | 343.7500 | 419.8369 | 0.0313          | 3690.0958 | 3644.5789 | 0.0306              | 3774.5098  | 3736.8610 | 0.0001        | 0.0008            | 0.0594 | 0.0543    |               |
| 15   | 423             | 850     | 0.4976   | 0.0012  | 0.0024       | 0.0237      | 418.3149 | 419.8369 | 0.0305          | 4550.7172 | 3644.5789 | 0.0295              | 4704.9788  | 3736.8610 | 0.0002        | 0.0012            | 0.0580 | 0.0640    |               |
| 15   | 566             | 850     | 0.6659   | 0.0012  | 0.0018       | 0.0243      | 545.9105 | 419.8369 | 0.0440          | 4220.8807 | 3644.5789 | 0.0427              | 4349.3852  | 3736.8610 | 0.0010        | 0.0023            | 0.0723 | 0.0838    |               |
| 15   | 760             | 850     | 0.8941   | 0.0012  | 0.0013       | 0.0249      | 715.3614 | 419.8369 | 0.1227          | 2032.3961 | 3644.5789 | 0.1207              | 2066.0729  | 3736.8610 | 0.0079        | 0.0099            | 0.1580 | 0.1126    |               |

TABLE 5 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a cloud cluster of a 10 Gbit/s Ethernet network. The \textit{BatchSize} is 2 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 2 is $\mu^r=850$ transactions per second. This means that the service time of a transaction is $ T_s^r = 0.0012$ seconds. For example, if we let the number of ordering service nodes be $k=3$ and the transaction arrival rate be $\lambda^r=244$ transactions per second, we have the queueing latency $T_q^r=0.0000$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.0475$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0251$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.0172$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=456.5142$ Mbps, $\beta_{l2f}^r=452.0089$~Mbps, from which the model has an overall latency $T^r=0.0431$~seconds.



lambda*3kB*8/1024/T_{c2l}

lambda*3*8*(k-1)/1024/T_{l2f}



#### 2.6. Results of the Order Phase with a \textit{BatchSize} of 5 in the Cloud Cluster

Table 6. The effects of OSNs on the throughput and latency in the order phase. There are $k=$3,9,15 OSNs in a cloud cluster of 10 Gbps Ethereum network. The BatchSize is 5 and the BatchTimeout is 1.

|      | Measure derived |         |          |         |              | Measure     |          |          |                 |            |           |                     |            |           |               |                   |        | Our model |               |
| ---- | --------------- | ------- | -------- | ------- | ------------ | ----------- | -------- | -------- | --------------- | ---------- | --------- | ------------------- | ---------- | --------- | ------------- | ----------------- | ------ | --------- | ------------- |
| $k$  | $\lambda^r$     | $\mu^r$ | $\rho^r$ | $T_s^r$ | $T_{idle}^r$ | $T_{c2l}^r$ | BW       | avg BW   | Our $T_{l2f}^r$ | Our BW     | avg BW    | $M/M/1$ $T_{l2f}^r$ | $M/M/1$ BW | avg BW    | Our $T_{q}^r$ | $M/M/1$ $T_{q}^r$ | $T^r$  | Our $T^r$ | $M/M/1$ $T^r$ |
| 3    | 244             | 1500    | 0.1627   | 0.0007  | 0.0102       | 0.0237      | 241.2975 | 486.3114 | 0.0104          | 1099.7596  | 1132.2699 | 0.0103              | 1110.4369  | 1147.8258 | 0.0000        | 0.0001            | 0.0450 | 0.0319    |               |
| 3    | 312             | 1500    | 0.2080   | 0.0007  | 0.0080       | 0.0228      | 320.7237 | 486.3114 | 0.0130          | 1125.0000  | 1132.2699 | 0.0129              | 1133.7209  | 1147.8258 | 0.0000        | 0.0001            | 0.0445 | 0.0355    |               |
| 3    | 352             | 1500    | 0.2347   | 0.0007  | 0.0071       | 0.0236      | 349.5763 | 486.3114 | 0.0173          | 953.7572   | 1132.2699 | 0.0171              | 964.9123   | 1147.8258 | 0.0000        | 0.0002            | 0.0487 | 0.0380    |               |
| 3    | 423             | 1500    | 0.2820   | 0.0007  | 0.0059       | 0.0205      | 483.6128 | 486.3114 | 0.0218          | 909.5470   | 1132.2699 | 0.0216              | 917.9688   | 1147.8258 | 0.0000        | 0.0002            | 0.0489 | 0.0429    |               |
| 3    | 566             | 1500    | 0.3773   | 0.0007  | 0.0044       | 0.0207      | 640.8514 | 486.3114 | 0.0212          | 1251.4741  | 1132.2699 | 0.0208              | 1275.5409  | 1147.8258 | 0.0000        | 0.0004            | 0.0470 | 0.0537    |               |
| 3    | 760             | 1500    | 0.5067   | 0.0007  | 0.0033       | 0.0202      | 881.8069 | 486.3114 | 0.0245          | 1454.0816  | 1132.2699 | 0.024               | 1484.3750  | 1147.8258 | 0.0001        | 0.0006            | 0.0488 | 0.0692    |               |
| 9    | 244             | 1500    | 0.1627   | 0.0007  | 0.0102       | 0.0255      | 224.2647 | 448.7822 | 0.0112          | 4084.8214  | 3900.1069 | 0.0111              | 4121.6216  | 3944.8688 | 0.0000        | 0.0001            | 0.0476 | 0.0340    |               |
| 9    | 312             | 1500    | 0.2080   | 0.0007  | 0.0080       | 0.0262      | 279.1031 | 448.7822 | 0.0170          | 3441.1765  | 3900.1069 | 0.0169              | 3461.5385  | 3944.8688 | 0.0000        | 0.0001            | 0.0519 | 0.0382    |               |
| 9    | 352             | 1500    | 0.2347   | 0.0007  | 0.0071       | 0.0274      | 301.0949 | 448.7822 | 0.0196          | 3367.3469  | 3900.1069 | 0.0194              | 3402.0619  | 3944.8688 | 0.0000        | 0.0002            | 0.0548 | 0.0411    |               |
| 9    | 423             | 1500    | 0.2820   | 0.0007  | 0.0059       | 0.0239      | 414.8143 | 448.7822 | 0.0203          | 3907.0197  | 3900.1069 | 0.0201              | 3945.8955  | 3944.8688 | 0.0000        | 0.0002            | 0.0508 | 0.0466    |               |
| 9    | 566             | 1500    | 0.3773   | 0.0007  | 0.0044       | 0.0221      | 600.2545 | 448.7822 | 0.0284          | 3736.7958  | 3900.1069 | 0.028               | 3790.1786  | 3944.8688 | 0.0000        | 0.0004            | 0.0556 | 0.0587    |               |
| 9    | 760             | 1500    | 0.5067   | 0.0007  | 0.0033       | 0.0204      | 873.1618 | 448.7822 | 0.0293          | 4863.4812  | 3900.1069 | 0.0288              | 4947.9167  | 3944.8688 | 0.0001        | 0.0006            | 0.0538 | 0.0759    |               |
| 15   | 244             | 1500    | 0.1627   | 0.0007  | 0.0102       | 0.0250      | 228.7500 | 446.0277 | 0.0104          | 7698.3173  | 8042.6306 | 0.0103              | 7773.0583  | 8167.1831 | 0.0000        | 0.0001            | 0.0463 | 0.0327    |               |
| 15   | 312             | 1500    | 0.2080   | 0.0007  | 0.0080       | 0.0256      | 285.6445 | 446.0277 | 0.0135          | 7583.3333  | 8042.6306 | 0.0134              | 7639.9254  | 8167.1831 | 0.0000        | 0.0001            | 0.0478 | 0.0366    |               |
| 15   | 352             | 1500    | 0.2347   | 0.0007  | 0.0071       | 0.0280      | 294.6429 | 446.0277 | 0.0167          | 6916.1677  | 8042.6306 | 0.0165              | 7000.0000  | 8167.1831 | 0.0000        | 0.0002            | 0.0525 | 0.0392    |               |
| 15   | 423             | 1500    | 0.2820   | 0.0007  | 0.0059       | 0.0228      | 434.8273 | 446.0277 | 0.0186          | 7462.1976  | 8042.6306 | 0.0182              | 7626.2019  | 8167.1831 | 0.0000        | 0.0004            | 0.0480 | 0.0444    |               |
| 15   | 566             | 1500    | 0.3773   | 0.0007  | 0.0044       | 0.0232      | 571.7942 | 446.0277 | 0.0224          | 8291.0156  | 8042.6306 | 0.022               | 8441.7614  | 8167.1831 | 0.0000        | 0.0004            | 0.0507 | 0.0557    |               |
| 15   | 760             | 1500    | 0.5067   | 0.0007  | 0.0033       | 0.0207      | 860.5072 | 446.0277 | 0.0242          | 10304.7521 | 8042.6306 | 0.0237              | 10522.1519 | 8167.1831 | 0.0001        | 0.0006            | 0.0490 | 0.0719    |               |

Table 6 shows the effects of OSNs on throughput and latency during the order phase. There are $k=3, 9, 15$ OSNs in a cloud cluster of a 10 Gbit/s Ethernet network. The \textit{BatchSize} is 5 and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency in the order phase. The maximum throughput of the ordering service with a \textit{BatchSize} of 5 is $\mu^r=1500$ transactions per second. This means that the service time of a transaction is $ T_s^r = 0.0007$ seconds. For example, if we let the number of ordering service nodes be $k=3$ and the transaction arrival rate be $\lambda^r=244$ transactions per second, we have the queueing latency $T_q^r=0.0000$ seconds. We measure the overall latency of a transaction spent in the order phase $T^r=0.0450$ seconds and the communication latency spent between the client and the ordering service $T_{c2l}^r=0.0237$ seconds, from which the communication latency spent between the OSN leader and followers $T_{l2f}^r=0.0104$. And when $n=3$, the effective network bandwidth is stable around $\beta_{c2l}^r=488.6910$ Mbps, $\beta_{l2f}^r=1235.1806$~Mbps, from which the model has an overall latency $T^r=0.0319$~seconds.



lambda*3kB*8/1024/T_{c2l}

lambda*3*8*(k-1)/1024/T_{l2f}



#### 2.7. Results of the Validate Phase in the Local Cluster

Table 7. The effects of an HDD of 63 IOps on the throughput and latency in the validate phase. There is a committing peer in a local cluster of 1 Gbps Ethereum network. The BatchSize is 20, 50. And the BatchTimeout is 1.

|           | Measure derived |         |          |         | Measure          |         |         |                      |            |         |                        |              |         |               |                   |                     |        | Our model |
| --------- | --------------- | ------- | -------- | ------- | ---------------- | ------- | ------- | -------------------- | ---------- | ------- | ---------------------- | ------------ | ------- | ------------- | ----------------- | ------------------- | ------ | --------- |
| BatchSize | $\lambda^v$     | $\mu^v$ | $\rho^v$ | $T_s^v$ | Our $T_{comm}^v$ | Our BW  | avg BW  | $M/M/1$ $T_{comm}^v$ | $M/M/1$ BW | avg BW  | $M/E_r/1$ $T_{comm}^v$ | $M/E_r/1$ BW | avg BW  | Our $T_{q}^v$ | $M/M/1$ $T_{q}^v$ | $M/E_r/1$ $T_{q}^v$ | $T^v$  | $T^v$     |
| 20        | 65              | 85      | 0.7647   | 0.0118  | 0.6019           | 2.5310  | 2.9901  | 0.6019               | 2.5310     | 3.0620  | 0.5956                 | 2.5578       | 2.8406  | 0.0224        | 0.0382            | 0.0287              | 0.6361 | 0.6351    |
| 20        | 82              | 85      | 0.9647   | 0.0118  | 0.5572           | 3.4492  | 2.9901  | 0.5349               | 3.5930     | 3.0620  | 0.6153                 | 3.1235       | 2.8406  | 0.2993        | 0.3216            | 0.2412              | 0.8683 | 0.8149    |
| 50        | 65              | 185     | 0.3514   | 0.0054  | 0.222            | 6.8623  | 10.2041 | 0.2194               | 6.9437     | 10.4442 | 0.2201                 | 6.9216       | 10.3204 | 0.0003        | 0.0029            | 0.0022              | 0.2277 | 0.1543    |
| 50        | 109             | 185     | 0.5795   | 0.0054  | 0.2573           | 9.9288  | 10.2041 | 0.2522               | 10.1296    | 10.4442 | 0.2542                 | 10.0499      | 10.3204 | 0.0027        | 0.0078            | 0.0058              | 0.2654 | 0.2342    |
| 50        | 142             | 185     | 0.7676   | 0.0054  | 0.2408           | 13.8211 | 10.2041 | 0.2334               | 14.2593    | 10.4442 | 0.2379                 | 13.9896      | 10.3204 | 0.0105        | 0.0179            | 0.0134              | 0.2567 | 0.3318    |



Table 7 shows the effects of an HDD of 63 IOs per second on the throughput and latency in the validate phase. There is a committing peer in the local cluster of a 1~Gbit/s Ethernet network. The \textit{BatchSize} is 20, 50, respectively, and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency of a committing peer in the validate phase. The maximum throughput of the committing peer with a \textit{BatchSize} of 20 is $\mu^v=85$ transactions per second. This means that the service time of a transaction is $T_s^v = 0.0118$ seconds. For example, let the transaction arrival rate $\lambda^v=65$ transactions per second, we have the queueing latency $T_q^v=0.0010$ seconds. We measure the overall latency of a transaction spent in the validate phase $T^v=0.6361$ seconds. And when a \textit{BatchSize} of 20, the average effective network bandwidth is stable around $\beta^v=2.4478$ Mbps, from which the model has an overall latency $T^v=0.6351$ seconds.



lambda*3kB*8/1024/T_{comm}



#### 2.8. Results of the Validate Phase in the Cloud Cluster

Table 8. The effects of an SSD of 1490 IOps on the throughput and latency in the validate phase. There is a committing peer in a local cluster of 10 Gbps Ethereum network. The BatchSize is 2, 5. And the BatchTimeout is 1.

|           | Measure derived |         |          |         | Measure          |         |         |                      |             |         |                        |              |         |               |                   |                     |        | Our model |
| --------- | --------------- | ------- | -------- | ------- | ---------------- | ------- | ------- | -------------------- | ----------- | ------- | ---------------------- | ------------ | ------- | ------------- | ----------------- | ------------------- | ------ | --------- |
| BatchSize | $\lambda^v$     | $\mu^v$ | $\rho^v$ | $T_s^v$ | Our $T_{comm}^v$ | Our BW  | avg BW  | $M/M/1$ $T_{comm}^v$ | $M/M/1$  BW | avg BW  | $M/E_r/1$ $T_{comm}^v$ | $M/E_r/1$ BW | avg BW  | Our $T_{q}^v$ | $M/M/1$ $T_{q}^v$ | $M/E_r/1$ $T_{q}^v$ | $T^v$  | $T^v$     |
| 2         | 78              | 180     | 0.4333   | 0.0056  | 0.0515           | 35.4976 | 34.0017 | 0.048                | 38.0859     | 36.8071 | 0.049                  | 37.3087      | 35.7058 | 0.0007        | 0.0042            | 0.0032              | 0.0578 | 0.0602    |
| 2         | 90              | 180     | 0.5000   | 0.0056  | 0.0448           | 47.0843 | 34.0017 | 0.0406               | 51.9550     | 36.8071 | 0.042                  | 50.2232      | 35.7058 | 0.0014        | 0.0056            | 0.0042              | 0.0518 | 0.0685    |
| 2         | 150             | 180     | 0.8333   | 0.0056  | 0.181            | 19.4233 | 34.0017 | 0.1725               | 20.3804     | 36.8071 | 0.1795                 | 19.5857      | 35.7058 | 0.0193        | 0.0278            | 0.0208              | 0.2059 | 0.1146    |
| 5         | 78              | 1490    | 0.0523   | 0.0007  | 0.0347           | 52.6837 | 71.7767 | 0.0347               | 52.6837     | 71.8288 | 0.0347                 | 52.6837      | 71.7767 | 0.0000        | 0.0000            | 0.0000              | 0.0354 | 0.0248    |
| 5         | 90              | 1490    | 0.0604   | 0.0007  | 0.0355           | 59.4190 | 71.7767 | 0.0355               | 59.4190     | 71.8288 | 0.0355                 | 59.4190      | 71.7767 | 0.0000        | 0.0000            | 0.0000              | 0.0362 | 0.0285    |
| 5         | 150             | 1490    | 0.1007   | 0.0007  | 0.0417           | 84.3076 | 71.7767 | 0.0417               | 84.3076     | 71.8288 | 0.0417                 | 84.3076      | 71.7767 | 0.0000        | 0.0000            | 0.0000              | 0.0424 | 0.0470    |
| 5         | 214             | 1490    | 0.1436   | 0.0007  | 0.0531           | 94.4562 | 71.7767 | 0.053                | 94.6344     | 71.8288 | 0.0531                 | 94.4562      | 71.7767 | 0.0000        | 0.0001            | 0.0000              | 0.0538 | 0.0668    |
| 5         | 240             | 1490    | 0.1611   | 0.0007  | 0.0827           | 68.0169 | 71.7767 | 0.0826               | 68.0993     | 71.8288 | 0.0827                 | 68.0169      | 71.7767 | 0.0000        | 0.0001            | 0.0000              | 0.0834 | 0.0748    |

Table 8 shows the effects of an SSD of 1490 IOs per second on the throughput and latency in the validate phase. There is a committing peer in the cloud cluster of a 10~Gbit/s Ethernet network. The \textit{BatchSize} is 2, 5, respectively, and the \textit{BatchTimeout} is 1. It validates the model of throughput and latency of a committing peer in the validate phase. The maximum throughput of the committing peer with a \textit{BatchSize} of 2 is $\mu^v=180$ transactions per second. This means that the service time of a transaction is $ T_s^v = 0.0056$ seconds. For example, let the transaction arrival rate $\lambda^v=65$ transactions per second, we have the queueing latency $T_q^v=0.0005$ seconds. We measure the overall latency of a transaction spent in the validate phase $T^v=0.0578$ seconds. And when a \textit{BatchSize} of 2, the average effective network bandwidth is stable around $\beta^v=33.7581$ Mbps, from which the model has an overall latency $T^v=0.0602$ seconds.



lambda*3kB*8/1024/T_{comm}
