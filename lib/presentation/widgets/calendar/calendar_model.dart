class Calendar {
  int _day;
  int _month;
  int _year;
  int _weekDay;

  Calendar(this._day, this._month, this._year, this._weekDay);

  //setters

  set day(int day) {
    _day = day;
  }

  set month(int month) {
    _month = month;
  }

  set year(int year) {
    _year = year;
  }

  set weekDay(int weekDay) {
    _weekDay = weekDay;
  }

  //getters

  int get day => _day;
  int get month => _month;
  int get year => _year;
  int get weekDay => _weekDay;
}