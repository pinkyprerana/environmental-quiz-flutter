import 'package:intl/intl.dart';

// date formatter e.g. 12/03/2012
String formatDateTimeToDDMMYY(DateTime dateTime) {
  final DateFormat formatter = DateFormat('dd MMM, yyyy');
  return formatter.format(dateTime);
}

// time formatter e.g. 4:30pm
String formatTime(DateTime dateTime) {
  final DateFormat formatter = DateFormat('h.mm a');
  return formatter.format(dateTime);
}
