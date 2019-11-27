import argparse
from datetime import datetime

parser = argparse.ArgumentParser()
parser.add_argument(
    'description',
    type=str,
    default='outage',
    metavar='d')

args = parser.parse_args()
description = args.description

outage_date = datetime.now().strftime('%c')
with open('/home/david/.outage_date.txt', 'a+') as f:
    f.write('{},{}\n'.format(outage_date, description))
