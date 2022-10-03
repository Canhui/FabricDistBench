时间备注: Exp 1, 2, 3需要一整个下午的时间。

代码备份: $HOME/fabric-samples/exp1_cpu_cores

实验核心: 相同的workload latency控制下，应该具有相同的transaction arrvial rate



#### Exp1: 1 cpu core, 1 byte

parameters

```shell
# client 2-8

# variables
delay=1500000
payloadbyte=1

# orderer cpu cores
8
```



results (The Overhead of Spawning Threads)

for small matrices the overhead of spawning threads dominates the runtime perform

https://dl.acm.org/doi/pdf/10.1145/3412841.3441993?casa_token=PIcPLTY1mdAAAAAA:RNMQ4Fyj-nvkRjtKyflPRjHuIbSVrkOKhFCOxhPmVDiP6G16c-HQTSStMUa2epAeILPnmi6UAyn1



```shell
#-------------c=1 Estimate Overhead---------------------------#
# 1500000 - proposal 0.0025s - endorse 0.1365s - 1.8055tps - 1byte
# 1500000 - proposal 0.0024s - endorse 0.1330s - 1.4827tps - 1byte
# 1500000 - proposal 0.0025s - endorse 0.1276s - 1.5279tps - 1byte
# 1500000 - proposal 0.0025s - endorse 0.1276s - 1.2948tps - 1byte
# 1500000 - proposal 0.0026s - endorse 0.1317s - 1.2059tps - 1byte
# 1500000 - proposal 0.0027s - endorse 0.1258s - 1.1770tps - 1byte
# 1500000 - proposal 0.0026s - endorse 0.1242s - 1.5583tps - 1byte
# 1500000 - proposal 0.0023s - endorse 0.1088s - 1.5213tps - 1byte
# 1500000 - proposal 0.0021s - endorse 0.1132s - 1.6265tps - 1byte

#----------------------c=1------------------------------------#
# 2000s - proposal 0.0023s - endorse 1.0833s - 785.0567tps - 1byte
# 2000s - proposal 0.0023s - endorse 1.0808s - 770.8812tps - 1byte
# 2000s - proposal 0.0023s - endorse 1.0761s - 762.5831tps - 1byte
# 2000s - proposal 0.0023s - endorse 1.1666s - 787.9130tps - 1byte
# 2000s - proposal 0.0023s - endorse 1.1552s - 791.8581tps - 1byte
# 2000s - proposal 0.0023s - endorse 1.1546s - 789.2974tps - 1byte
# 2000s - proposal 0.0022s - endorse 1.2517s - 781.1431tps - 1byte
# 2000s - proposal 0.0022s - endorse 1.2559s - 781.0249tps - 1byte
# 2000s - proposal 0.0022s - endorse 1.2559s - 778.7851tps - 1byte
# 2000s - proposal 0.0023s - endorse 1.2607s - 780.9083tps - 1byte
# 2000s - endorse 1.2607s - 780.9083tps - 1byte - net 2560KBps 

# 2100s - proposal 0.0023s - endorse 1.0699s - 754.8440tps - 1byte
# 2100s - proposal 0.0023s - endorse 1.0969s - 752.4616tps - 1byte
# 2100s - proposal 0.0023s - endorse 1.0930s - 753.9932tps - 1byte
# 2100s - proposal 0.0023s - endorse 1.0930s - 753.9932tps - 1byte
# 2100s - proposal 0.0022s - endorse 1.1346s - 716.8008tps - 1byte
# 2100s - proposal 0.0022s - endorse 1.1343s - 720.3818tps - 1byte
# 2100s - proposal 0.0022s - endorse 1.1448s - 711.4428tps - 1byte
# 2100s - proposal 0.0022s - endorse 1.1908s - 745.5932tps - 1byte
# 2100s - proposal 0.0024s - endorse 1.1590s - 736.2688tps - 1byte
# 2100s - endorse 1.1590s - 736.2688tps - 1byte - net 2560KBps

# 2200s - proposal 0.0024s - endorse 1.0913s - 739.4039tps - 1byte
# 2200s - proposal 0.0024s - endorse 1.0787s - 724.9196tps - 1byte
# 2200s - proposal 0.0023s - endorse 1.0802s - 719.4227tps - 1byte
# 2200s - proposal 0.0023s - endorse 1.1166s - 647.5955tps - 1byte
# 2200s - proposal 0.0023s - endorse 1.1369s - 654.3511tps - 1byte
# 2200s - proposal 0.0023s - endorse 1.1309s - 649.8256tps - 1byte
# 2200s - proposal 0.0023s - endorse 1.1890s - 731.6449tps - 1byte
# 2200s - proposal 0.0023s - endorse 1.1754s - 725.0272tps - 1byte
# 2200s - endorse 1.1754s - 725.0272tps - 1byte - net 2560KBps

# 2500s - proposal 0.0025s - endorse 0.8393s - 659.0076tps - 1byte
# 2500s - proposal 0.0025s - endorse 0.8652s - 641.6418tps - 1byte
# 2500s - proposal 0.0025s - endorse 0.8626s - 631.8359tps - 1byte
# 2500s - proposal 0.0025s - endorse 0.9227s - 655.1831tps - 1byte
# 2500s - proposal 0.0025s - endorse 0.9235s - 653.7197tps - 1byte
# 2500s - proposal 0.0024s - endorse 0.9409s - 650.9727tps - 1byte
# 2500s - proposal 0.0022s - endorse 1.0283s - 585.3670tps - 1byte
# 2500s - proposal 0.0022s - endorse 1.0260s - 587.5851tps - 1byte
# 2500s - proposal 0.0022s - endorse 1.0306s - 580.4320tps - 1byte
# 2500s - proposal 0.0023s - endorse 1.0203s - 640.4800tps - 1byte
# 2500s - proposal 0.0024s - endorse 1.0027s - 613.5481tps - 1byte
# 2500s - endorse 1.0027s - 613.5481tps - 1byte - net 1800KBps

# 3000s - proposal 0.0026s - endorse 0.7050s - 540.9330tps - 1byte
# 3000s - proposal 0.0026s - endorse 0.7141s - 536.2027tps - 1byte
# 3000s - proposal 0.0026s - endorse 0.7608s - 538.5757tps - 1byte
# 3000s - proposal 0.0024s - endorse 0.9092s - 502.0684tps - 1byte
# 3000s - proposal 0.0024s - endorse 0.9112s - 501.6870tps - 1byte
# 3000s - proposal 0.0024s - endorse 0.9218s - 501.3339tps - 1byte
# 3000s - proposal 0.0024s - endorse 0.8264s - 541.4270tps - 1byte
# 3000s - proposal 0.0023s - endorse 0.8374s - 524.1888tps - 1byte
# 3000s - endorse 0.8374s - 524.1888tps - 1byte - net 1500KBps

# 4000s - proposal 0.0025s - endorse 0.7013s - 392.1999tps - 1byte
# 4000s - proposal 0.0025s - endorse 0.7008s - 396.0155tps - 1byte
# 4000s - proposal 0.0025s - endorse 0.6994s - 396.0014tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.7902s - 370.6327tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.7912s - 372.5591tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.7925s - 377.8588tps - 1byte
# 4000s - proposal 0.0023s - endorse 0.8049s - 412.4615tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.7807s - 426.5095tps - 1byte
# 4000s - endorse 0.7807s - 426.5095tps - 1byte - net 1400KBps

# 5000s - proposal 0.0026s - endorse 0.5763s - 341.9292tps - 1byte
# 5000s - proposal 0.0026s - endorse 0.5791s - 344.6606tps - 1byte
# 5000s - proposal 0.0026s - endorse 0.5790s - 344.8550tps - 1byte
# 5000s - proposal 0.0024s - endorse 0.6429s - 295.6314tps - 1byte
# 5000s - proposal 0.0024s - endorse 0.6449s - 296.2631tps - 1byte
# 5000s - proposal 0.0024s - endorse 0.6441s - 297.0768tps - 1byte
# 5000s - proposal 0.0026s - endorse 0.4344s - 301.7169tps - 1byte
# 5000s - proposal 0.0025s - endorse 0.3521s - 307.9470tps - 1byte
# 5000s - proposal 0.0024s - endorse 0.6110s - 337.2905tps - 1byte
# 5000s - endorse 0.6110s - 337.2905tps - 1byte - net 1300KBps

# 6000s - proposal 0.0025s - endorse 0.4846s - 283.2097tps - 1byte
# 6000s - proposal 0.0025s - endorse 0.4876s - 288.2187tps - 1byte
# 6000s - proposal 0.0025s - endorse 0.4878s - 286.6881tps - 1byte
# 6000s - proposal 0.0025s - endorse 0.4222s - 273.6831tps - 1byte
# 6000s - proposal 0.0024s - endorse 0.4168s - 271.1017tps - 1byte
# 6000s - proposal 0.0025s - endorse 0.4009s - 273.0708tps - 1byte
# 6000s - proposal 0.0026s - endorse 0.4268s - 277.6886tps - 1byte
# 6000s - proposal 0.0026s - endorse 0.4203s - 287.3529tps - 1byte
# 6000s - endorse 0.4203s - 287.3529tps - 1byte - net 1200KBps

# 7000s - proposal 0.0027s - endorse 0.3982s - 245.8851tps - 1byte
# 7000s - proposal 0.0027s - endorse 0.3998s - 251.4024tps - 1byte
# 7000s - proposal 0.0027s - endorse 0.3998s - 259.6653tps - 1byte
# 7000s - proposal 0.0026s - endorse 0.3157s - 212.9405tps - 1byte
# 7000s - proposal 0.0026s - endorse 0.3157s - 210.7047tps - 1byte
# 7000s - proposal 0.0023s - endorse 0.3572s - 225.8348tps - 1byte
# 7000s - proposal 0.0024s - endorse 0.2989s - 234.9791tps - 1byte
# 7000s - endorse 0.2989s - 234.9791tps - 1byte - net 1100KBps

# 8000s - proposal 0.0026s - endorse 0.2797s - 188.5787tps - 1byte
# 8000s - proposal 0.0026s - endorse 0.2762s - 188.3733tps - 1byte
# 8000s - proposal 0.0026s - endorse 0.2727s - 189.6924tps - 1byte
# 8000s - proposal 0.0024s - endorse 0.2349s - 206.4464tps - 1byte
# 8000s - proposal 0.0024s - endorse 0.2388s - 205.6614tps - 1byte
# 8000s - proposal 0.0024s - endores 0.2369s - 203.3382tps - 1byte
# 8000s - proposal 0.0026s - endorse 0.2501s - 190.0177tps - 1byte
# 8000s - proposal 0.0025s - endorse 0.2636s - 209.1977tps - 1byte
# 8000s - endorse 0.2636s - 209.1977tps - 1byte - net 900KBps

# 10000s - proposal 0.0029s - endorse 0.2775s - 166.7135tps - 1byte
# 10000s - proposal 0.0029s - endorse 0.2775s - 173.0735tps - 1byte
# 10000s - proposal 0.0029s - endorse 0.2778s - 173.9025tps - 1byte
# 10000s - proposal 0.0026s - endorse 0.1988s - 147.7771tps - 1byte
# 10000s - proposal 0.0026s - endorse 0.1945s - 148.9046tps - 1byte
# 10000s - proposal 0.0026s - endorse 0.1969s - 149.7593tps - 1byte
# 10000s - proposal 0.0026s - endorse 0.2195s - 165.9423tps - 1byte
# 10000s - proposal 0.0026s - endorse 0.2136s - 164.8135tps - 1byte
# 10000s - endorse 0.2136s - 164.8135tps - 1byte - net 700KBps

```





#### Exp2: 2 cpu cores, 1 byte

parameters

```shell
# client 2-8

# variables
delay=1500000
payloadbyte=1
```



results

```shell
#-------------c=2 Estimate Overhead---------------------------#
# 1500000 - proposal 0.0026s - endorse 0.1052s - 1.8428tps - 1byte
# 1500000 - proposal 0.0025s - endorse 0.1043s - 1.6354tps - 1byte
# 1500000 - proposal 0.0025s - endorse 0.1066s - 1.6883tps - 1byte
# 1500000 - proposal 0.0024s - endorse 0.1066s - 1.8324tps - 1byte
# 1500000 - proposal 0.0023s - endorse 0.1337s - 1.2747tps - 1byte
# 1500000 - proposal 0.0028s - endorse 0.1349s - 0.9708tps - 1byte
# 1500000 - proposal 0.0028s - endorse 0.1262s - 0.9140tps - 1byte
# 1500000 - proposal 0.0028s - endorse 0.1090s - 1.9967tps - 1byte
# 1500000 - proposal 0.0028s - endorse 0.1076s - 1.8630tps - 1byte
# 1500000 - proposal 0.0028s - endorse 0.1078s - 1.5594tps - 1byte

#----------------------c=2------------------------------------#
# 800s - proposal 0.0023s - endorse 0.8036s - 1462.1619tps - 1byte
# 800s - proposal 0.0023s - endorse 1.0247s - 1416.6892tps - 1byte
# 800s - proposal 0.0024s - endorse 0.9586s - 1452.0757tps - 1byte
# 800s - proposal 0.0024s - endorse 0.8773s - 1478.6548tps - 1byte
# 800s - endorse 0.8773s - 1478.648tps - 1byte - 3000KBps

# 900s - proposal 0.0024s - endorse 0.7805s - 1480.1491tps - 1byte
# 900s - proposal 0.0024s - endorse 0.7680s - 1453.6383tps - 1byte
# 900s - proposal 0.0024s - endorse 0.7522s - 1401.3550tps - 1byte
# 900s - proposal 0.0022s - endorse 1.1885s - 1413.2777tps - 1byte
# 900s - proposal 0.0022s - endorse 1.1810s - 1364.6757tps - 1byte
# 900s - proposal 0.0022s - endorse 1.1672s - 1322.9508tps - 1byte
# 900s - proposal 0.0024s - endorse 0.8714s - 1450.7015tps - 1byte
# 900s - proposal 0.0023s - endorse 0.7777s - 1446.1031tps - 1byte
# 900s - proposal 0.0023s - endorse 0.8011s - 1446.6221tps - 1byte
# 900s - endorse 0.8011s - 1446.6221tps - 1byte - 2800KBps

# 1000s - proposal 0.0024s - endorse 0.6895s - 1371.0458tps - 1byte
# 1000s - proposal 0.0024s - endorse 0.6931s - 1357.4559tps - 1byte
# 1000s - proposal 0.0024s - endorse 0.7058s - 1318.5137tps - 1byte
# 1000s - proposal 0.0023s - endorse 0.9921s - 1292.6829tps - 1byte
# 1000s - proposal 0.0023s - endorse 1.0026s - 1247.4279tps - 1byte
# 1000s - proposal 0.0023s - endorse 1.0018s - 1235.6527tps - 1byte
# 1000s - proposal 0.0022s - endorse 0.8750s - 1332.0568tps - 1byte
# 1000s - proposal 0.0022s - endorse 0.7203s - 1331.9397tps - 1byte
# 1000s - proposal 0.0022s - endorse 0.8406s - 1350.7043tps - 1byte
# 1000s - proposal 0.0023s - endorse 0.7398s - 1338.8645tps - 1byte
# 1000s - endorse 0.7398s - 1338.8645tps - 1byte - 2500KBps 

# 1200s - proposal 0.0024s - endorse 0.4521s - 1251.9864tps - 1byte
# 1200s - proposal 0.0024s - endorse 0.4643s - 1263.6443tps - 1byte
# 1200s - proposal 0.0024s - endorse 0.4746s - 1256.5199tps - 1byte
# 1200s - proposal 0.0024s - endorse 0.4743s - 1260.5694tps - 1byte
# 1200s - proposal 0.0024s - endorse 0.4766s - 1256.1157tps - 1byte
# 1200s - proposal 0.0022s - endorse 0.7267s - 1133.1638tps - 1byte
# 1200s - proposal 0.0022s - endorse 0.7378s - 1115.2909tps - 1byte
# 1200s - proposal 0.0022s - endorse 0.7378s - 1113.6529tps - 1byte
# 1200s - proposal 0.0022s - endorse 0.7292s - 1110.9160tps - 1byte
# 1200s - proposal 0.0022s - endorse 0.7470s - 1233.1579tps - 1byte
# 1200s - proposal 0.0024s - endorse 0.7265s - 1278.4479tps - 1byte
# 1200s - endorse 0.7265s - 1278.4479tps - 1byte - 2500KBps

# 1400s - proposal 0.0025s - endorse 0.4981s - 1129.0980tps - 1byte
# 1400s - proposal 0.0025s - endorse 0.4954s - 1112.7873tps - 1byte
# 1400s - proposal 0.0024s - endorse 0.5023s - 1126.8382tps - 1byte
# 1400s - proposal 0.0025s - endorse 0.4954s - 1144.3588tps - 1byte
# 1400s - proposal 0.0022s - endorse 0.7582s - 1061.8166tps - 1byte
# 1400s - proposal 0.0022s - endorse 0.7491s - 1044.7761tps - 1byte
# 1400s - proposal 0.0022s - endorse 0.7493s - 1023.3715tps - 1byte
# 1400s - proposal 0.0022s - endorse 0.7026s - 1046.1514tps - 1byte
# 1400s - proposal 0.0023s - endorse 0.6311s - 1095.6244tps - 1byte
# 1400s - endorse 0.6311s - 1095.6244tps - 1byte - 2400KBps

# 1800s - proposal 0.0023s - endorse 0.3868s - 869.8095tps - 1byte
# 1800s - proposal 0.0023s - endorse 0.3845s - 876.4565tps - 1byte
# 1800s - proposal 0.0023s - endorse 0.3852s - 873.1752tps - 1byte
# 1800s - proposal 0.0022s - endorse 0.4729s - 783.0813tps - 1byte
# 1800s - proposal 0.0022s - endorse 0.4684s - 788.9102tps - 1byte
# 1800s - proposal 0.0022s - endorse 0.4621s - 782.9107tps - 1byte
# 1800s - proposal 0.0022s - endorse 0.4922s - 861.6133tps - 1byte
# 1800s - proposal 0.0022s - endorse 0.4447s - 852.2133tps - 1byte
# 1800s - endorse 0.4447s - 852.2133tps - 1byte - 2300KBps

# 2500s - proposal 0.0027s - endorse 0.3393s - 574.6745tps - 1byte
# 2500s - proposal 0.0027s - endorse 0.3321s - 572.3766tps - 1byte
# 2500s - proposal 0.0027s - endorse 0.3331s - 554.8757tps - 1byte
# 2500s - proposal 0.0027s - endorse 0.3315s - 546.7243tps - 1byte
# 2500s - proposal 0.0023s - endorse 0.3474s - 671.4285tps - 1byte
# 2500s - proposal 0.0024s - endorse 0.3452s - 667.3545tps - 1byte
# 2500s - proposal 0.0024s - endorse 0.3452s - 658.3176tps - 1byte
# 2500s - proposal 0.0023s - endorse 0.3822s - 656.3873tps - 1byte
# 2500s - proposal 0.0023s - endorse 0.3661s - 600.7604tps - 1byte
# 2500s - endorse 0.3661s - 600.7604tps - 1byte - 2200KBps

# 4000s - proposal 0.0027s - endorse 0.2707s - 435.0828tps - 1byte
# 4000s - proposal 0.0027s - endorse 0.2673s - 424.7015tps - 1byte
# 4000s - proposal 0.0026s - endorse 0.2676s - 427.1194tps - 1byte
# 4000s - proposal 0.0025s - endorse 0.3013s - 449.4079tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.3043s - 451.8760tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.3141s - 457.0516tps - 1byte
# 4000s - proposal 0.0025s - endorse 0.2473s - 411.4695tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.3213s - 400.4435tps - 1byte
# 4000s - endorse 0.3213s - 400.4435tps - 1byte - 2100KBps

```





#### Exp3: 4 cpu cores, 1 byte

parameters

```shell
# client 2-8

# variables
delay=1500000
payloadbyte=1
```



results

```shell
#-------------c=4 Estimate Overhead---------------------------#
# 1500000s - proposal 0.0024s - endorse 0.0098s - 2.3946tps - 1byte
# 1500000s - proposal 0.0024s - endorse 0.1011s - 2.1172tps - 1byte
# 1500000s - proposal 0.0024s - endorse 0.1011s - 2.1172tps - 1byte
# 1500000s - proposal 0.0024s - endorse 0.1011s - 2.1172tps - 1byte
# 1500000s - proposal 0.0024s - endorse 0.1011s - 2.1172tps - 1byte
# 1500000s - proposal 0.0020s - endorse 0.0956s - 1.2676tps - 1byte
# 1500000s - proposal 0.0021s - endorse 0.1152s - 1.5820tps - 1byte
# 1500000s - proposal 0.0021s - endorse 0.1133s - 1.4793tps - 1byte
# 1500000s - proposal 0.0033s - endorse 0.1136s - 1.7312tps - 1byte
# 1500000s - proposal 0.0022s - endorse 0.1135s - 1.1194tps - 1byte

#----------------------c=4------------------------------------#
# 800s - proposal 0.0024s - endorse 0.2714s - 1493.7042tps - 1byte
# 800s - proposal 0.0024s - endorse 0.2723s - 1432.4273tps - 1byte
# 800s - proposal 0.0024s - endorse 0.2717s - 1375.1552tps - 1byte
# 800s - proposal 0.0022s - endorse 0.2978s - 1479.7310tps - 1byte
# 800s - proposal 0.0022s - endorse 0.2982s - 1432.6417tps - 1byte
# 800s - proposal 0.0023s - endorse 0.1975s - 1461.0919tps - 1byte
# 800s - proposal 0.0023s - endorse 0.2986s - 1460.3127tps - 1byte
# 800s - endorse 0.2986s - 1460.3127tps - 1byte - 3000KBps

# 900s - proposal 0.0024s - endorse 0.2797s - 1299.8430tps - 1byte
# 900s - proposal 0.0024s - endorse 0.2799s - 1270.4479tps - 1byte
# 900s - proposal 0.0024s - endorse 0.2794s - 1199.1373tps - 1byte
# 900s - proposal 0.0023s - endorse 0.2517s - 1226.0062tps - 1byte
# 900s - proposal 0.0022s - endorse 0.3169s - 1394.8973tps - 1byte
# 900s - proposal 0.0022s - endorse 0.3168s - 1330.3362tps - 1byte
# 900s - proposal 0.0022s - endorse 0.3152s - 1288.1161tps - 1byte
# 900s - proposal 0.0023s - endorse 0.1874s - 1464.4107tps - 1byte
# 900s - proposal 0.0023s - endorse 0.2999s - 1435.6535tps - 1byte 
# 900s - endorse 0.2999s - 1435.6535tps - 1byte - 3000KBps

# 1000s - proposal 0.0025s - endorse 0.2739s - 1161.8025tps - 1byte
# 1000s - proposal 0.0025s - endorse 0.2741s - 1132.8045tps - 1byte
# 1000s - proposal 0.0025s - endorse 0.2741s - 1132.8045tps - 1byte
# 1000s - proposal 0.0022s - endorse 0.2805s - 1056.6793tps - 1byte
# 1000s - proposal 0.0022s - endorse 0.2945s - 1345.2000tps - 1byte
# 1000s - proposal 0.0022s - endorse 0.2929s - 1327.2953tps - 1byte
# 1000s - proposal 0.0022s - endorse 0.2886s - 1257.2978tps - 1byte
# 1000s - proposal 0.0022s - endorse 0.1876s - 1331.1421tps - 1byte
# 1000s - proposal 0.0022s - endorse 0.2982s - 1302.2851tps - 1byte
# 1000s - endorse 0.2982s - 1302.2851tps - 1byte - 3000KBps

# 1200s - proposal 0.0024s - endorse 0.2639s - 1086.5041tps - 1byte
# 1200s - proposal 0.0024s - endorse 0.2629s - 1064.3250tps - 1byte
# 1200s - proposal 0.0024s - endorse 0.2618s - 1016.0392tps - 1byte
# 1200s - proposal 0.0023s - endorse 0.2648s - 775.8859tps - 1byte
# 1200s - proposal 0.0022s - endorse 0.3000s - 1108.0762tps - 1byte
# 1200s - proposal 0.0022s - endorse 0.3010s - 1140.6820tps - 1byte
# 1200s - proposal 0.0022s - endorse 0.3021s - 1157.4225tps - 1byte
# 1200s - proposal 0.0023s - endorse 0.1808s - 1126.7372tps - 1byte 
# 1200s - proposal 0.0022s - endorse 0.2807s - 1139.3382tps - 1byte
# 1200s - endorse 0.2807s - 1139.3382tps - 1byte - 3000KBps

# 1400s - proposal 0.0023s - endorse 0.2506s - 999.9314tps - 1byte
# 1400s - proposal 0.0023s - endorse 0.2503s - 984.2473tps - 1byte
# 1400s - proposal 0.0023s - endorse 0.2490s - 971.6827tps - 1byte
# 1400s - proposal 0.0023s - endorse 0.2718s - 1002.1508tps - 1byte
# 1400s - proposal 0.0023s - endorse 0.2732s - 1013.9331tps - 1byte
# 1400s - proposal 0.0023s - endorse 0.2732s - 1045.6176tps - 1byte
# 1400s - proposal 0.0022s - endorse 0.1780s - 1007.6034tps - 1byte
# 1400s - proposal 0.0023s - endorse 0.2506s - 1013.4355tps - 1byte
# 1400s - endorse 0.2506s - 1013.4355tps - 1byte - 3000KBps

# 1800s - proposal 0.0024s - endorse 0.2460s - 820.4545tps - 1byte
# 1800s - proposal 0.0024s - endorse 0.2437s - 840.7276tps - 1byte
# 1800s - proposal 0.0024s - endorse 0.2456s - 842.4586tps - 1byte
# 1800s - proposal 0.0023s - endorse 0.2433s - 770.2502tps - 1byte
# 1800s - proposal 0.0023s - endorse 0.2432s - 788.4338tps - 1byte
# 1800s - proposal 0.0023s - endorse 0.2436s - 795.5319tps - 1byte
# 1800s - proposal 0.0023s - endorse 0.1716s - 858.4380tps - 1byte
# 1800s - proposal 0.0023s - endorse 0.2451s - 845.1560tps - 1byte
# 1800s - endorse 0.2451s - 845.1560tps - 1byte - 2900KBps

# 2500s - proposal 0.0023s - endorse 0.2219s - 603.8684tps - 1byte
# 2500s - endorse 0.2219s - 603.8684tps - 1byte - 2900KBps

# 4000s - proposal 0.0026s - endorse 0.2218s - 409.7542tps - 1byte
# 4000s - proposal 0.0026s - endorse 0.2227s - 415.4537tps - 1byte
# 4000s - proposal 0.0026s - endorse 0.2235s - 412.5008tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.1781s - 432.1194tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.1811s - 420.9828tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.1828s - 427.7060tps - 1byte
# 4000s - proposal 0.0022s - endorse 0.1413s - 434.6260tps - 1byte
# 4000s - proposal 0.0024s - endorse 0.1982s - 405.1762tps - 1byte
# 4000s - endorse 0.1982s - 405.1762tps - 1byte - 2500KBps

```





#### Exp4: 8 cpu cores, 1 byte

parameters

```shell
# client 2-8

# variables
delay=1500000
payloadbyte=1
```



results

```shell
#-------------c=8 Estimate Overhead---------------------------#
# 1500000s - proposal 0.0024s - endorse 0.1059s - 2.0772tps - 1byte

#----------------------c=8------------------------------------#
# 800s - proposal 0.0024s - endorse 0.2685s - 1458.4394tps - 1byte

# 900s - proposal 0.0023s - endorse 0.2601s - 1424.9127tps - 1byte

# 1000s - proposal 0.0023s - endorse 0.2420s - 1305.2307tps - 1byte

# 1200s - proposal 0.0023s - endorse 0.2420s - 1140.5328tps - 1byte

# 1400s - proposal 0.0024s - endorse 0.2417s - 1046.1445tps - 1byte

# 1800s - proposal 0.0023s - endorse 0.2337s - 825.9139tps - 1byte

# 2500s - proposal 0.0023s - endorse 0.3212s - 620.0218tps - 1byte  

# 4000s - proposal 0.0023s - endorse 0.1724s - 407.4669tps - 1byte
```











---

---

-------------------以下部分暂不考虑-------------------

---

---



#### Exp4: 1 cpu core, 100000 byte

parameters

```shell
# client 2-8

# variables
delay=1500000
payloadbyte=100000
```



results

```shell
#-------------c=1 Estimate Overhead---------------------------#
# 1500000 - 0.4505s - 1.6366tps - 100000byte
# 1500000 - 0.4385s - 0.8485tps - 100000byte
# 1500000 - 0.7686s - 3.1863tps - 100000byte
# 1500000 - 0.7613s - 2.9726tps - 100000byte

#----------------------c=1------------------------------------#
# 20000s - 1.3053s - 86.0883tps - 100000byte
# 20000s - 1.3543s - 86.8539tps - 100000byte
# 20000s - 1.3688s - 87.1534tps - 100000byte
# 20000s - 1.3599s - 86.3537tps - 100000byte
# 20000s - 1.3454s - 88.6065tps - 100000byte
# 20000s - 1.3448s - 88.6065tps - 100000byte
# 20000s - 1.3389s - 88.6065tps - 100000byte
# 20000s - 1.3403s - 84.8688tps - 100000byte

# 30000s - 1.1380s - 71.2035tps - 100000byte
# 30000s - 1.1248s - 71.8782tps - 100000byte
# 30000s - 1.1133s - 72.4697tps - 100000byte
# 30000s - 1.1171s - 72.0196tps - 100000byte
# 30000s - 1.1115s - 72.8155tps - 100000byte

# 40000s - 0.9883s - 41.0396tps - 100000byte
# 40000s - 0.9919s - 41.0396tps - 100000byte
# 40000s - 0.9919s - 40.5672tps - 100000byte
# 40000s - 0.9821s - 42.3169tps - 100000byte
# 40000s - 0.9838s - 40.2703tps - 100000byte

# 50000s - 0.8242s - 32.2625tps - 100000byte
# 50000s - 0.8305s - 30.5558tps - 100000byte
# 50000s - 0.8305s - 31.2671tps - 100000byte
# 50000s - 0.8305s - 31.2671tps - 100000byte
# 50000s - 0.8305s - 31.2671tps - 100000byte
# 50000s - 0.8353s - 31.2671tps - 100000byte

# 80000s - 0.7826s - 20.2591tps - 100000byte
# 80000s - 0.7826s - 19.5835tps - 100000byte
# 80000s - 0.7997s - 19.0164tps - 100000byte
# 80000s - 0.7997s - 19.3340tps - 100000byte

```

















