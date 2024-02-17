import 'package:flutter/material.dart';

List<Widget> listItems(List<dynamic>? data, BuildContext context) {
  List<Widget> listItems = [];

  data?.forEach((element) { 
      final publisher=element.publisher.toString().split('.').last.toUpperCase();
    listItems.add(
      ListTile(
        title: Text(element.Title),
        subtitle: Text(publisher),
        onTap: () {
        },
      )
    );
  });
  return listItems;
}