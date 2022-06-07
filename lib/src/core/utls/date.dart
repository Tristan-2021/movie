String date(DateTime? data) {
  if (data != null) {
    final datames =
        DateTime.fromMicrosecondsSinceEpoch(data.microsecondsSinceEpoch)
            .toLocal()
            .month;
    final mes = dateTime(datames);
    final day = DateTime.fromMicrosecondsSinceEpoch(data.microsecondsSinceEpoch)
        .toLocal()
        .day;
    final year =
        DateTime.fromMicrosecondsSinceEpoch(data.microsecondsSinceEpoch)
            .toLocal()
            .year;
    final fechaaprseada = '$day $mes $year';
    return fechaaprseada;
  } else {
    return 'no release';
  }
}

String dateTime(int monday) {
  switch (monday) {
    case 1:
      return 'ene';
    case 2:
      return 'Feb';
    case 3:
      return 'mar';
    case 4:
      return 'abr';
    case 5:
      return 'may';
    case 6:
      return 'jun';
    case 7:
      return 'jul';
    case 8:
      return 'ago';
    case 9:
      return 'sep';
    case 10:
      return 'oct';
    case 11:
      return 'nov';
    case 12:
      return 'dic';

    default:
      return 'ups!';
  }
}
