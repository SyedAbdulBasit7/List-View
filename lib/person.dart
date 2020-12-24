import 'package:flutter/foundation.dart';

class Person {
  final String id;
  final String name;
  final int age;
  final String address;
  final double cnic;
  final bool martialStatus;
  Person({
    @required this.id,
    @required this.name,
    @required this.age,
    @required this.address,
    @required this.cnic,
    @required this.martialStatus,
  });
}
