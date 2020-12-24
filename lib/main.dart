import 'package:flutter/material.dart';
import './widgets/personList.dart';
import './person.dart';
import './widgets/add_person.dart';
import './widgets/fancy_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Changer",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
      ),
      home: MyPersonApp(),
    );
  }
}

class MyPersonApp extends StatefulWidget {
  @override
  _MyPersonAppState createState() => _MyPersonAppState();
}

class _MyPersonAppState extends State<MyPersonApp> {
  final List<Person> plist = [
    Person(
      id: 'p1',
      name: 'Syed Abdul Basit',
      age: 22,
      address: 'F South 88-6 Malir EXT Colony Karachi.',
      cnic: 4251010450807,
      martialStatus: false,
    ),
    Person(
      id: 'p2',
      name: 'Syed Ali',
      age: 30,
      address: 'Gulistan-e-Jauhar Karachi.',
      cnic: 4251010450887,
      martialStatus: true,
    ),
    Person(
      id: 'p3',
      name: 'Muhammad Baqar',
      age: 24,
      address: 'Hawksbay 54/3 Navael Colony Karachi.',
      cnic: 4251010454347,
      martialStatus: false,
    ),
     Person(
      id: 'p4',
      name: 'Syed Umair Ahmed',
      age: 20,
      address: 'Shah faisal Town and Colony Karachi.',
      cnic: 4251010454347,
      martialStatus: false,
    ),
  ];

  void addNewPerson(
      String name, int age, String address, double cnic, bool martialStatus) {
    final newPx = Person(
      id: DateTime.now().toString(),
      name: name,
      age: age,
      address: address,
      cnic: cnic,
      martialStatus: martialStatus,
    );
    setState(() {
      plist.add(newPx);
    });
  }

  void startAddPerson(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: AddPerson(addNewPerson),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Changer"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              tooltip: 'Add Person',
              onPressed: () => startAddPerson(context),
            ),
          ],
        ),
        body:
            // Column(
            //   children: plist.map((e) {
            //     return PersonList(
            //       e.name,
            //       e.age,
            //       e.address,
            //       e.cnic,
            //       e.martialStatus,
            //     );
            //   }).toList(),
            // ),
            PersonList(plist),
            floatingActionButton: FancyButton(
              onPressed: () => startAddPerson(context),
            ),
    );
  }
}
