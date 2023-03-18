

import 'package:flutter/material.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

BottomNavigationBar makeBottomBar(){
  return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:"Home"
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          label: "My Account"
        ),
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: 0,
      selectedItemColor: ColorConstants.kPrimaryColor,
      unselectedItemColor: ColorConstants.kBlueGrayColor,
      unselectedLabelStyle: const TextStyle(
          color: ColorConstants.kBlueGrayColor,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      iconSize: 32,
      onTap: (i) {},
      elevation: 5
  );
}