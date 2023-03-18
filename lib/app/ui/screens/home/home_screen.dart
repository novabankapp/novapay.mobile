import 'package:flutter/material.dart';
import 'package:nave_app/app/ui/screens/common/bottom_bar.dart';
import 'package:nave_app/app/ui/screens/common/top_bar.dart';
import 'package:nave_app/app/ui/widgets/common/menu/menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: makeHomeTopBar(title: "Home"),
        bottomNavigationBar: makeBottomBar(),
        body:  Container(
                padding: const EdgeInsets.fromLTRB(2, 24, 2, 6),
                child: const Menu()
            )

    );
  }
}