import 'package:flutter/material.dart';

class AddPerson extends StatefulWidget {
  final Function addPx;
  AddPerson(this.addPx);
  @override
  _AddPersonState createState() => _AddPersonState();
}

class _AddPersonState extends State<AddPerson> {
  final List<String> MartialStatus = ['true', 'false'];
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final addressController = TextEditingController();
  final cnicController = TextEditingController();

  String martialStatusValue;

  bool toBoolean() {
    if (martialStatusValue == 'true') {
      return true;
    } else {
      return false;
    }
  }

  void submitData() {
    widget.addPx(
      nameController.text,
      int.parse(ageController.text),
      addressController.text,
      double.parse(cnicController.text),
      toBoolean(),
    );
    Navigator.of(context).pop();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(6),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Name'),
                    controller: nameController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Age'),
                    keyboardType: TextInputType.number,
                    controller: ageController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Address'),
                    controller: addressController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Cnic'),
                    keyboardType: TextInputType.number,
                    controller: cnicController,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: DropdownButton(
                      elevation: 5,
                      value: martialStatusValue,
                      hint: Text('Martial Status'),
                      onChanged: (value) {
                        setState(() {
                          martialStatusValue = value;
                        });
                      },
                      items: MartialStatus.map((e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      }).toList(),
                    ),
                  ),
                  FlatButton(
                    onPressed: submitData,
                    child: Text('Add'),
                    textColor: Theme.of(context).primaryColorDark,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
