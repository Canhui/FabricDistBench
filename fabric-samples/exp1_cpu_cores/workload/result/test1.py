import time
from datetime import datetime

#time_str = '2021-01-21 11-11-52-238'
#print to_timestamp(time_str)

#dt_obj = datetime.strptime(timestamp_str, '%Y-%m-%d %H-%M-%S-%f')
#timestamp = time.mktime(dt_obj.timetuple()) + dt_obj.microsecond / 1e6
#print timestamp


def to_timestamp(time_str):
    dt_obj = datetime.strptime(time_str, '%Y-%m-%d %H-%M-%S-%f')
    timestamp = time.mktime(dt_obj.timetuple()) + dt_obj.microsecond / 1e6
    return timestamp

time_str = '2021-01-21 11-11-52-238'
print to_timestamp(time_str)
