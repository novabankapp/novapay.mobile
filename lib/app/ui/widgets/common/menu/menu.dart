
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nave_app/app/ui/widgets/common/menu/menu_card.dart';

class Menu extends StatefulWidget{
  const Menu({
    Key? key,

  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();

}
class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
      ),
      children: [
          makeMenuCard(text: "Services", iconData: Icons.access_alarm),
          makeMenuCard(text: "Banks", iconData: Icons.account_balance),
          makeMenuCard(text: "History", iconData: Icons.access_time)
      ],
    );
  }

}