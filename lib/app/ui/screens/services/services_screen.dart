import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/common/data_event.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';
import 'package:nave_app/app/blocs/merchants/bloc.dart';
import 'package:nave_app/app/ui/screens/common/bottom_bar.dart';
import 'package:nave_app/app/ui/screens/common/top_bar.dart';
import 'package:nave_app/app/ui/widgets/common/list_tile.dart';
import 'package:nave_app/app/ui/widgets/common/menu/menu_card.dart';
import 'package:nave_app/app/ui/widgets/services/services.dart';
import 'package:nave_app/infrastructure/di/injection.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: makeTopBar(title: "Services",
            bgColor: const Color.fromRGBO(255, 255, 255,1),
            widgets: <Widget>[
              IconButton(
                icon: const Icon(Icons.list),
                onPressed: () {},
              )
            ]),
        bottomNavigationBar: makeBottomBar(widgets:
        <Widget>[
          IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_box, color: Colors.white),
            onPressed: () {},
          )
        ]
        ),
        body: BlocProvider<MerchantBloc>(
        create: (context) =>  locator<MerchantBloc>()..add(const DataLoad()),
        child: makeMenuCard(text: "Account", iconData:Icons.account_balance),
    )
    );
  }
}

