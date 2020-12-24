import 'package:flutter/material.dart';
import '../person.dart';

class PersonList extends StatelessWidget {
  // final String name;
  // final int age;
  // final String address;
  // final double cnic;
  // final bool martialStatus;
  final List<Person> pl;
  PersonList(
    // this.name,
    // this.age,
    // this.address,
    // this.cnic,
    // this.martialStatus,
    this.pl,
  );
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              child: Card(
                elevation: 5,
                child: Text(
                  pl[index].name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              width: double.infinity,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Theme.of(context).primaryColorDark),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Card(
                color: Theme.of(context).primaryColorDark,
                elevation: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Age: ${pl[index].age}',
                      style: TextStyle(fontSize: 18, color: Theme.of(context).accentColor),
                    ),
                    Text(
                      'Address: ${pl[index].address}',
                      style: TextStyle(fontSize: 18, color: Theme.of(context).accentColor),
                    ),
                    Text(
                      'Cnic: ${pl[index].cnic}',
                      style: TextStyle(fontSize: 18, color: Theme.of(context).accentColor),
                    ),
                    Text(
                      'Married Status: ${pl[index].martialStatus}',
                      style: TextStyle(fontSize: 18, color: Theme.of(context).accentColor),
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      },
      itemCount: pl.length,
    );
  }
}
