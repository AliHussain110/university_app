import 'timetable.dart';
import 'grade.dart';

class UsersProfile {
  String userid;
  String password;
  List<TimeTable> usertimetable;
  List<Grade> usergrades;
  List<UserInformation> userinfo;
  UsersProfile(
    this.userid,
    this.password,
    this.usertimetable,
    this.usergrades,
    this.userinfo,
  );
}

class UserInformation {
  String regno, name, fname, email, phoneno;
  UserInformation(this.regno, this.name, this.fname, this.email, this.phoneno);
}

List<UserInformation> userdata = [
  UserInformation(
    'LHR18878256',
    'Ali Hussain',
    'Muhammad Imtiaz',
    'bcsm-f20-392',
    '03208467924',
  ),
  UserInformation(
    'LHR18878256',
    'Hussain',
    'Muhammad Imtiaz',
    'bcsm-f20-392',
    '03208467924',
  ),
  UserInformation(
    'LHR18878256',
    'Moeen',
    'zia',
    'bcsm-f20-392',
    '03208467924',
  )
];

List<UsersProfile> UsersData = [
  UsersProfile('ali110', '1887826', studData, studGrades, userdata),
  UsersProfile('ali', '1887826', studData, studGrades, userdata),
  UsersProfile('moeen', '1887826', studData, studGrades, userdata),
  UsersProfile('muaz', '1887826', studData, studGrades, userdata),
  UsersProfile('a', 'a', studData, studGrades, userdata),
];
