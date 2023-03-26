import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/bank_bloc/bloc.dart';
import 'package:nave_app/app/blocs/common/data_event.dart';
import 'package:nave_app/app/blocs/merchants/bloc.dart';
import 'package:nave_app/app/blocs/transactions/generate_trn_cubit.dart';
import 'package:nave_app/app/ui/screens/common/bottom_bar.dart';
import 'package:nave_app/app/ui/screens/common/top_bar.dart';
import 'package:nave_app/app/ui/widgets/transactions/generate_trn.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:nave_app/infrastructure/di/injection.dart';

class GenerateTRNScreen extends StatelessWidget {
  const GenerateTRNScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: makeHomeTopBar(title: "Generate TRN"),
        bottomNavigationBar: makeBottomBar(),
        body: MultiBlocProvider(
          providers: [
            BlocProvider<MerchantBloc>(
              create: (context) =>  locator<MerchantBloc>()..add(const DataLoad()),
            ),
            BlocProvider<BankBloc>(
              create: (context) =>  locator<BankBloc>()..add(const DataLoad()),
            ),
            BlocProvider<GenerateTRNCubit>(
                create: (context) =>  locator<GenerateTRNCubit>()
            ),
          ],
          child: Container(

              color: ColorConstants.kWhiteColor,
              child: const GenerateTRN()
          ),
        )
    );
  }
}