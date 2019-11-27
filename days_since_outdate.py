from datetime import datetime


def get_outage_info(file_path):
    with open(file_path, 'r') as outage_date:
        line = outage_date.readlines()[-1]
        line = line.split(",")
        date = line[0]
        date = date.rstrip()
        description = line[1]
        return datetime.strptime(date, '%c'), description


def days_since_outage(outage_date):
    now = datetime.now()
    delta = now - outage_date
    return delta.days


outage_date, description = get_outage_info('/home/david/.outage_date.txt')
delta = days_since_outage(outage_date)
print("{} days since {}".format(delta, description))
