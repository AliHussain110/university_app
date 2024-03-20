class NotificationsModel {
  List<Map> images;
  List<String> text;
  NotificationsModel(this.images, this.text);
}

List<NotificationsModel> note = [
  NotificationsModel(
    [
      {'img': 'assets/images/2.jpg'},
      {'img': 'assets/images/3.jpg'},
      {'img': 'assets/images/4.jpg'},
    ],
    [
      'The Superior Documentry',
      'Rankings',
      'Career-Jobs',
      'Sports Galla',
    ],
  )
];
