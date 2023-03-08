

import 'package:flutter/material.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';

ListTile buildList(BuildContext context, DataState state, int index) {
  return ListTile(
    title: Text(
      state.myList[index].name,
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.w300,
      ),
    ),
  );
}