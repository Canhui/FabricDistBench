import os
import sys
import time
import numpy as np
from datetime import datetime
infile = os.environ['HOME']+"/fabric-samples/demo-first/workload/result/ordererlog"
infile2 = os.environ['HOME']+"/fabric-samples/demo-first/workload/result/benchlog"

blkidentifier="indexBlock"
txidentifier="locPointer=offset"
txservicestartidentifier="with txid"

start_blk_idx = sys.argv[1]
end_blk_idx = sys.argv[2]


# extra functions
def to_timestamp(time_str):
    dt_obj = datetime.strptime(time_str, '%Y-%m-%d %H:%M:%S.%f')
    timestamp = time.mktime(dt_obj.timetuple()) + dt_obj.microsecond / 1e6
    return timestamp

def get_block_timestamp(log_line):
    return log_line.replace('m',' ').split(" ")[1]+" "+f[worker-1].replace('m',' ').split(" ")[2]

def get_block_num(log_line):
    return log_line.replace('m',' ').split(" ")[13].replace('=','').replace(',','')

def get_txid(log_line):
    return log_line.split(" ")[0].split("=")[1]

def get_tx_service_start_timestamp(f, txid):
    for line in f:
        if txservicestartidentifier in line and txid in line:
            return line.replace('m',' ').split(" ")[1]+" "+line.replace('m',' ').split(" ")[2]

def get_tx_issue_timestamp(f2, txid):
    for line in f2:
        if txid in line:
            return float(line.split(" ")[2].replace('\n',''))

# main function
with open(infile) as f:
    f = f.readlines()

with open(infile2) as f2:
    f2 = f2.readlines()

# find all line numbers for each block, e.g., print blklinenums
worker = 0
blocksize = 0
tx_service_time_of_all_blocks=[]
tx_total_ordering_service_time_of_all_blocks=[]
tx_issue_timestamps=[]
tx_issue_timeintervals=[]
for line in f:

    # find a block at line blkline -1
    worker = worker + 1
    if blkidentifier in line:
        blk_timestamp=to_timestamp(get_block_timestamp(f[worker-1])) # block timestamp (tx service time ends)
        blk_num=get_block_num(f[worker-1]) # block num

        if int(blk_num) >= int(sys.argv[1]) and int(blk_num) <= int(sys.argv[2]):
            print "block is created at:", blk_timestamp

            # find all transactions of the blk f[worker-1], block by block
            for i in range(200): 
                if txidentifier in f[worker-1+i+1]:
                    blocksize = blocksize+1
                    print get_txid(f[worker-1+i+1]) # txid
                    print to_timestamp(get_tx_service_start_timestamp(f, get_txid(f[worker-1+i+1]))) # tx service time begins
                    print blk_timestamp-to_timestamp(get_tx_service_start_timestamp(f, get_txid(f[worker-1+i+1]))) # tx service time duration
                    tx_service_time_of_all_blocks.append(blk_timestamp-to_timestamp(get_tx_service_start_timestamp(f, get_txid(f[worker-1+i+1]))))
                    print get_tx_issue_timestamp(f2, get_txid(f[worker-1+i+1])) # tx issue timestamp
                    print blk_timestamp-get_tx_issue_timestamp(f2, get_txid(f[worker-1+i+1])) # tx total time
                    tx_issue_timestamps.append(get_tx_issue_timestamp(f2, get_txid(f[worker-1+i+1])))
                    tx_total_ordering_service_time_of_all_blocks.append(blk_timestamp-get_tx_issue_timestamp(f2, get_txid(f[worker-1+i+1])))
                else:
                    print "block has the number of transactions:", blocksize
                    blocksize=0
                    break
        print "\n"

#print "service time of transactions in a block:", tx_service_time_of_all_blocks
print "coefficient of variance of service times of transactions in the order phase:", np.var(tx_service_time_of_all_blocks)/np.mean(tx_service_time_of_all_blocks)

tx_issue_timestamps_sorted=np.sort(tx_issue_timestamps)
for i in range(len(tx_issue_timestamps_sorted)-1):
    tx_issue_timeintervals.append(tx_issue_timestamps_sorted[i+1]-tx_issue_timestamps_sorted[i])
print "coefficient of variance of arrival intervals of transactions in the order phase:", np.var(tx_issue_timeintervals)/np.mean(tx_issue_timeintervals)

#print "total time of transaction in the order phase", tx_total_ordering_service_time_of_all_blocks
print "average total time per transaction in the order phase", np.mean(tx_total_ordering_service_time_of_all_blocks)

