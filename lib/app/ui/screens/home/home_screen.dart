import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/transactions/events.dart';
import 'package:nave_app/app/blocs/transactions/transaction_bloc.dart';
import 'package:nave_app/app/ui/screens/common/bottom_bar.dart';
import 'package:nave_app/app/ui/screens/common/top_bar.dart';
import 'package:nave_app/app/ui/widgets/common/menu/menu.dart';
import 'package:nave_app/app/ui/widgets/transactions/generate_trn.dart';
import 'package:nave_app/infrastructure/di/injection.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: makeHomeTopBar(title: "Home"),
        bottomNavigationBar: makeBottomBar(),
        body: BlocProvider<TransactionBloc>(
        create: (context) =>  locator<TransactionBloc>()..add(const TransactionByCustomerRefLoad("")),
          child: Container(
          padding: const EdgeInsets.fromLTRB(2, 24, 2, 6),
          child: const Menu()
          )
       )


    );
  }
}