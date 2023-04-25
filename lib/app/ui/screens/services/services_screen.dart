import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/common/data_event.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';
import 'package:nave_app/app/blocs/merchants/bloc.dart';
import 'package:nave_app/app/ui/screens/common/bottom_bar.dart';
import 'package:nave_app/app/ui/screens/common/top_bar.dart';
import 'package:nave_app/app/ui/widgets/common/list_tile.dart';
import 'package:nave_app/app/ui/widgets/common/menu/menu.dart';
import 'package:nave_app/app/ui/widgets/common/menu/menu_card.dart';
import 'package:nave_app/app/ui/widgets/services/services.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:nave_app/infrastructure/di/injection.dart';

@RoutePage()
class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: makeHomeTopBar(title: "Services"),
        bottomNavigationBar: makeBottomBar(),
        body: BlocProvider<MerchantBloc>(
        create: (context) =>  locator<MerchantBloc>()..add(const DataLoad()),
        child: Container(
            padding: const EdgeInsets.fromLTRB(2, 24, 2, 6),
            child: const Services()
        )
        )
    );
  }
}

