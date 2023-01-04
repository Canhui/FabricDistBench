#from datetime import datetime

#timestamp = 1545730073
#dt_object = datetime.fromtimestamp(timestamp)

#print("dt_object =", dt_object)
#print("type(dt_object) =", type(dt_object))

from datetime import datetime

# current date and time
now = datetime.now()

#print now
timestamp = datetime.timestamp(now)
#print "timestamp =", timestamp
print timestamp
