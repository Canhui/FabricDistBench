infile = r"/home/t716/fabric-samples/demo-first/workload/result/benchlog"

signal_sendrate=["Send_Endorsing_Proposal"]
send_time=[]

with open(infile) as f:
    f = f.readlines()

for line in f:
    for phrase in signal_sendrate:
        if phrase in line:
	    send_time.append(float(line.split(":")[1]))
	     

print "Avg_Send_Rate_Phrase_1:"
print len(send_time)/(max(send_time)-min(send_time))
