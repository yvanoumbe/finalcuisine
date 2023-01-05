import 'package:finalcuisine/pages/menu_page.dart';
import 'package:flutter/material.dart';
class ListeCourses extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<ListeCourses> {
  final allChecked = CheckBoxModal(title: 'All checked');
  final checkBoxList = [
    CheckBoxModal(title: 'tomate'),
    CheckBoxModal(title: 'Viande Hachée'),
    CheckBoxModal(title: 'ognon'),
    CheckBoxModal(title: 'Ail'),
    CheckBoxModal(title: 'cube'),
    CheckBoxModal(title: 'poivron'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text(
              'Liste des Courses',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body:  ListView(
            // color: Colors.green,

            children: [
              ListTile(
                onTap: () => onAllClicked(allChecked),
                leading: Checkbox(
                  value: allChecked.value,
                  onChanged: (value) => onAllClicked(allChecked),
                ),
                title: Text(allChecked.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Divider(),
              ...checkBoxList
                  .map(
                    (item) => ListTile(
                  onTap: () => onItemClicked(item),
                  leading: Checkbox(
                    value: item.value,
                    onChanged: (value) => onItemClicked(item),
                  ),
                  title: Text(item.title,
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              )
                  .toList()
            ],
          ),
        ));
  }

  onAllClicked(CheckBoxModal ckbItem) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      checkBoxList.forEach((element) {
        element.value = newValue;
      });
    });
  }

  onItemClicked(CheckBoxModal ckbItem) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;

      if (!newValue) {
        // this is list checkbox not checked full all => so not checked allChecked
        allChecked.value = false;
      } else {
        // this is list checkbox not checked full all => so need checked
        final allListChecked = checkBoxList.every((element) => element.value);
        allChecked.value = allListChecked;
      }
    });
  }
}

class CheckBoxModal {
  String title;
  bool value;

  CheckBoxModal({required this.title, this.value = false});
}
