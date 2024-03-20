class TimeTable {
  List<Map> timetable;
  List<Attandance> attend;
  int fee;
  double gpa, cpga;
  TimeTable(
    this.attend,
    this.timetable,
    this.fee,
    this.gpa,
    this.cpga,
  );
}

class Attandance {
  String text;
  int no;
  Attandance(this.text, this.no);
}

List<TimeTable> studData = [
  TimeTable(
    [
      Attandance('Lecture', 10),
      Attandance('Absent', 5),
      Attandance('Leave', 1),
    ],
    [
      {
        'day': 'Monday',
        'class': [
          {
            'time': '09:00-10:55',
            'subject': 'English Literature',
            'room': 'Room-[06]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'Web Development LAB',
            'room': 'LAB-[03]',
          },
          {
            'time': '1:00-02:30',
            'subject': 'Software Engineering',
            'room': 'Room-[02]',
          },
        ]
      },
      {
        'day': 'Tuesday',
        'class': [
          {
            'time': '09:00-11:15',
            'subject': 'WEB Development',
            'room': 'Room-[08]',
          },
          {
            'time': '11:30-12:30',
            'subject': 'Computer Networks',
            'room': 'Room-[05]',
          },
          {
            'time': '01:00-02:30',
            'subject': 'Software Engineering',
            'room': 'Room-[07]',
          },
        ]
      },
      {
        'day': 'Wednessday',
        'class': [
          {
            'time': '08:00-10:15',
            'subject': 'Computer Networks Lab',
            'room': 'LAB-[02]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'English Literature',
            'room': 'Room-[04]',
          },
          {
            'time': '01:30-03:30',
            'subject': 'Mobile Application',
            'room': 'Room-[04]',
          },
        ]
      },
      {
        'day': 'Thursday',
        'class': [
          {
            'time': '09:00-11:00',
            'subject': 'Islamyat',
            'room': 'Room-[01]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'Computer Networks',
            'room': 'Room-[04]',
          },
        ]
      },
      {
        'day': 'Friday',
        'class': [
          {
            'time': '10:00-1:00',
            'subject': 'Mobile Application LAB',
            'room': 'LAB-[02]',
          },
        ]
      },
    ],
    55000,
    3.55,
    3.0,
  ),
  TimeTable(
    [
      Attandance('Lecture', 20),
      Attandance('Absent', 10),
      Attandance('Leave', 2),
    ],
    [
      {
        'day': 'Monday',
        'class': [
          {
            'time': '09:00-10:55',
            'subject': 'English Literature',
            'room': 'Room-[06]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'Web Development LAB',
            'room': 'LAB-[30]',
          },
          {
            'time': '1:00-02:30',
            'subject': 'Software Engineering',
            'room': 'Room-[02]',
          },
        ]
      },
      {
        'day': 'Tuesday',
        'class': [
          {
            'time': '09:00-11:15',
            'subject': 'WEB Development',
            'room': 'Room-[09]',
          },
          {
            'time': '11:30-12:30',
            'subject': 'Computer Networks',
            'room': 'Room-[01]',
          },
          {
            'time': '01:00-02:30',
            'subject': 'Software Engineering',
            'room': 'Room-[02]',
          },
        ]
      },
      {
        'day': 'Wednessday',
        'class': [
          {
            'time': '08:00-10:15',
            'subject': 'Computer Networks L',
            'room': 'LAB-[02]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'English Literature',
            'room': 'Room-[04]',
          },
          {
            'time': '01:30-03:30',
            'subject': 'Mobile Application',
            'room': 'Room-[04]',
          },
        ]
      },
      {
        'day': 'Thursday',
        'class': [
          {
            'time': '09:00-11:00',
            'subject': 'Islamyat',
            'room': 'Room-[01]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'Computer Networks',
            'room': 'Room-[04]',
          },
        ]
      },
      {
        'day': 'Friday',
        'class': [
          {
            'time': '10:00-1:00',
            'subject': 'Mobile Application LAB',
            'room': 'LAB-[02]',
          },
        ]
      },
    ],
    55000,
    3.88,
    3.0,
  ),
  TimeTable(
    [
      Attandance('Lecture', 10),
      Attandance('Absent', 6),
      Attandance('Leave', 3),
    ],
    [
      {
        'day': 'Monday',
        'class': [
          {
            'time': '09:00-10:55',
            'subject': 'English Literature',
            'room': 'Room-[06]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'Web Development LAB',
            'room': 'LAB-[3]',
          },
          {
            'time': '1:00-02:30',
            'subject': 'Software Engineering',
            'room': 'Room-[02]',
          },
        ]
      },
      {
        'day': 'Tuesday',
        'class': [
          {
            'time': '09:00-11:15',
            'subject': 'WEB Development',
            'room': 'Room-[01]',
          },
          {
            'time': '11:30-12:30',
            'subject': 'Computer Networks',
            'room': 'Room-[02]',
          },
          {
            'time': '01:00-02:30',
            'subject': 'Software Engineering',
            'room': 'Room-[03]',
          },
        ]
      },
      {
        'day': 'Wednessday',
        'class': [
          {
            'time': '08:00-10:15',
            'subject': 'Computer Networks Lab',
            'room': 'LAB-[02]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'English Literature',
            'room': 'Room-[04]',
          },
          {
            'time': '01:30-03:30',
            'subject': 'Mobile Application',
            'room': 'Room-[04]',
          },
        ]
      },
      {
        'day': 'Thursday',
        'class': [
          {
            'time': '09:00-11:00',
            'subject': 'Islamyat',
            'room': 'Room-[01]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'Computer Networks',
            'room': 'Room-[04]',
          },
        ]
      },
      {
        'day': 'Friday',
        'class': [
          {
            'time': '10:00-1:00',
            'subject': 'Mobile Application LAB',
            'room': 'LAB-[02]',
          },
        ]
      },
    ],
    55000,
    3.65,
    3.0,
  ),
  TimeTable(
    [
      Attandance('Lecture', 30),
      Attandance('Absent', 20),
      Attandance('Leave', 11),
    ],
    [
      {
        'day': 'Monday',
        'class': [
          {
            'time': '09:00-10:55',
            'subject': 'English Literature',
            'room': 'Room-[01]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'Web Development LAB',
            'room': 'LAB-[23]',
          },
          {
            'time': '1:00-02:30',
            'subject': 'Software Engineering',
            'room': 'Room-[52]',
          },
        ]
      },
      {
        'day': 'Tuesday',
        'class': [
          {
            'time': '09:00-11:15',
            'subject': 'WEB Development',
            'room': 'Room-[01]',
          },
          {
            'time': '11:30-12:30',
            'subject': 'Computer Networks',
            'room': 'Room-[02]',
          },
          {
            'time': '01:00-02:30',
            'subject': 'Software Engineering',
            'room': 'Room-[03]',
          },
        ]
      },
      {
        'day': 'Wednessday',
        'class': [
          {
            'time': '08:00-10:15',
            'subject': 'Computer Networks L',
            'room': 'LAB-[10]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'English Literature',
            'room': 'Room-[41]',
          },
          {
            'time': '01:30-03:30',
            'subject': 'Mobile Application',
            'room': 'Room-[24]',
          },
        ]
      },
      {
        'day': 'Thursday',
        'class': [
          {
            'time': '09:00-11:00',
            'subject': 'Islamyat',
            'room': 'Room-[01]',
          },
          {
            'time': '11:00-12:30',
            'subject': 'Computer Networks',
            'room': 'Room-[04]',
          },
        ]
      },
      {
        'day': 'Friday',
        'class': [
          {
            'time': '10:00-1:00',
            'subject': 'MAD LAB',
            'room': 'LAB-[02]',
          },
        ]
      },
    ],
    3500,
    3.15,
    3.7,
  ),
];
