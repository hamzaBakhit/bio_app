import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  IconData leading;
  IconData trailing;
  String title;
  String subTitle;
  Function() onTab;

  CustomListTile({required this.leading,
    required this.trailing,
    required this.title,
    required this.subTitle,
    required this.onTab });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTab,
      child: ListTile(
        tileColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        leading: Icon(leading),
        trailing: Icon(trailing),
        title: Text(title),
        subtitle: Text(subTitle),
      ),
    );
  }
}
