import sys
import os
infile = os.environ['HOME']+"/fabric-samples/demo-first/workload/result/peerlog"

signal_recv_time = ["Received block"]
signal_vlid_time = ["Validated block"]
signal_comt_time = ["Committed block"]

recv_time = []
vlid_time = []
comt_time = []
recv_blkid = []
txs_block = []

start_idx = sys.argv[1]
end_idx = sys.argv[2]


with open(infile) as f:
    f = f.readlines()

with open(infile) as f:
    f = f.readlines()

for line in f:
    for phrase in signal_recv_time:
        if phrase in line:
            recv_time.append(line.split(" ")[1])
            recv_blkid.append(line.split(" ")[11].replace('[','').replace(']',''))
    for phrase in signal_vlid_time:
        if phrase in line:
            vlid_time.append(line.split(" ")[1])
    for phrase in signal_comt_time:
        if phrase in line:
            comt_time.append(line.split(" ")[1])
            txs_block.append(line.split(" ")[13])


print "block id:"
for i in range(0, len(recv_blkid)):
    if int(recv_blkid[i]) >= int(sys.argv[1]) and int(recv_blkid[i]) <= int(sys.argv[2]):
        print recv_blkid[i]

print " "
print "number of txs in this block"
for i in range(0, len(recv_blkid)):
    if int(recv_blkid[i]) >= int(sys.argv[1]) and int(recv_blkid[i]) <= int(sys.argv[2]):
        print txs_block[i]

print " "
print "time a block received"
for i in range(0, len(recv_blkid)):
    if int(recv_blkid[i]) >= int(sys.argv[1]) and int(recv_blkid[i]) <= int(sys.argv[2]):
        print recv_time[i] 

print " "
print "time a block validated"
for i in range(0, len(recv_blkid)):
    if int(recv_blkid[i]) >= int(sys.argv[1]) and int(recv_blkid[i]) <= int(sys.argv[2]):
        print vlid_time[i] 

print " "
print "time a block committed"
for i in range(0, len(recv_blkid)):
    if int(recv_blkid[i]) >= int(sys.argv[1]) and int(recv_blkid[i]) <= int(sys.argv[2]):
        print comt_time[i]  



