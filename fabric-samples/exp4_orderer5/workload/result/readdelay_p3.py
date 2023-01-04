import os
# import dependencies
import numpy as np

infile = os.environ['HOME']+"/fabric-samples/demo-first/workload/result/benchlog"

signal_proposal=["Delay_Proposal"]
signal_endorse=["Delay_Endorsing"]
signal_order=["Delay_Ordering"]
signal_commit=["Delay_Commit"]
delays_proposal=[]
delays_endorse=[]
delays_order=[]
delays_commit=[]


with open(infile) as f:
    f = f.readlines()

for line in f:
    for phrase in signal_proposal:
        if phrase in line:
            if float(line.split(":")[1]) > 0:
                delays_proposal.append(float(line.split(":")[1]))
    for phrase in signal_endorse:
        if phrase in line:
            if float(line.split(":")[1]) > 0:
                delays_endorse.append(float(line.split(":")[1]))
    for phrase in signal_order:
        if phrase in line:
            if float(line.split(":")[1]) > 0:
                delays_order.append(float(line.split(":")[1]))
    for phrase in signal_commit:
        if phrase in line:
            if float(line.split(":")[1]) > 0:
                delays_commit.append(float(line.split(":")[1]))

#print "Mean_Delay_Proposal:"
#print float(sum(delays_proposal))/float(len(delays_proposal))

#print "Mean_Delay_Endorse:"
#print float(sum(delays_endorse))/float(len(delays_endorse))

#print "Mean_Delay_Orderer:"
#print float(sum(delays_order))/float(len(delays_order))

print "Mean_Delay_Commit:"
print float(sum(delays_commit))/float(len(delays_commit))


# Sort the orderer delay
#delays_order_sorted = np.sort(delays_order)

# Calculate the proportional values of samples
#p = 1. * np.arange(len(delays_order)) / (len(delays_order) - 1)


# CDF, p = 0.5
#count = 0
#for i in p:
#    count = count + 1
#    if i >= 0.5:
#        print "CDF with the probability of 50%", delays_order_sorted[count]
#	break

# CDF, p = 0.9
#count = 0
#for i in p:
#    count = count + 1
#    if i >= 0.9:
#        print "CDF with the probability of 90%", delays_order_sorted[count]
#        break

# CDF, p = 0.95
#count = 0
#for i in p:
#    count = count + 1
#    if i >= 0.95:
#        print "CDF with the probability of 95%", delays_order_sorted[count]
#        break


#for i in delays_order:
#    print i

#print "Mean_Delay_order:"
#print float(sum(delays_order))/float(len(delays_order))
	     
#for i in delays_endorse:
#    print i

#for i in delays_order:
#    print i

#print "Lower_Bound_Phase_1:"
#print min(delays)

#print "Upper_Bound_Phase_1:"
#print max(delays)

#print "Mean_Delay_endorse:"
#print float(sum(delays_endorse))/float(len(delays_endorse))

#print "Mean_Delay_order:"
#print float(sum(delays_order))/float(len(delays_order))

#print "Std_Delay_Phrase_1:"
#print np.std(delays, ddof = 1)