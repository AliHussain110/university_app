class AttendanceData {
  List<Map> attendData;
  AttendanceData(this.attendData);
}

List<AttendanceData> subjects = [
  AttendanceData(
    [
      {
        'Subjects': 'Mobile Application Development',
        'attend': [
          {
            'atted': 15,
            'lev': 5,
            'lec': 20,
          },
        ],
      },
      {
        'Subjects': 'WEB Application Development',
        'attend': [
          {
            'atted': 16,
            'lev': 4,
            'lec': 20,
          },
        ],
      },
      {
        'Subjects': 'Islamyat',
        'attend': [
          {
            'atted': 17,
            'lev': 3,
            'lec': 20,
          },
        ],
      },
      {
        'Subjects': 'English Literture',
        'attend': [
          {
            'atted': 18,
            'lev': 2,
            'lec': 20,
          },
        ],
      },
      {
        'Subjects': 'Software Engenering',
        'attend': [
          {
            'atted': 19,
            'lev': 1,
            'lec': 20,
          },
        ],
      },
      {
        'Subjects': 'Computer Networks',
        'attend': [
          {
            'atted': 20,
            'lev': 0,
            'lec': 20,
          },
        ],
      },
    ],
  )
];
