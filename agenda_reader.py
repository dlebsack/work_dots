from datetime import datetime


class Events():
    def __init__(self, event):
        self.event = event

    @property
    def event_name(self):
        return self.event[26:]

    @property
    def event_time(self):
        str_date = self.event[:24]
        date = datetime.strptime(str_date, '%Y %a %b %d   %I:%M%p')
        return date

    @property
    def event_day(self):
        return self.event_time.day

    @property
    def pprint(self):
        now = datetime.now()
        if self.event_day == now.day:
            date_str = self.event_time.strftime('%I:%M%p')
        else:
            date_str = self.event_time.strftime('%a %b %d  %I:%M%p')
        return '{}  {}'.format(date_str, self.event_name)


class Agenda():
    def __init__(self, event_list):
        self.event_list = event_list

    @property
    def next_event(self):
        for event in self.event_list:
            if datetime.now() < event.event_time:
                return event


def get_raw_agenda(file_path):
    with open(file_path, 'r') as agenda:
        events = agenda.read()
    events = events.split('\n')
    agenda = []
    for event in events:
        if event == '':
            grab_date = True
            continue
        if grab_date:
            date = event[:10]
            agenda.append(event)
            grab_date = False
            continue
        agenda.append(event.replace('          ', date))
    year = datetime.now().strftime('%Y')
    return ['{} {}'.format(year, event) for event in agenda]


raw_agenda = get_raw_agenda('/home/david/.gcal_agenda.txt')
event_list = [Events(event) for event in raw_agenda]
agenda = Agenda(event_list)
print(agenda.next_event.pprint)
