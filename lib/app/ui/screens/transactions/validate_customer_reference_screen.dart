import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/common/data_event.dart';
import 'package:nave_app/app/blocs/merchants/bloc.dart';
import 'package:nave_app/app/cubits/transactions/validate_customer_reference_cubit.dart';
import 'package:nave_app/app/ui/screens/common/bottom_bar.dart';
import 'package:nave_app/app/ui/screens/common/top_bar.dart';
import 'package:nave_app/app/ui/widgets/transactions/validate_customer_reference.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:nave_app/infrastructure/di/injection.dart';


@RoutePage()
class ValidateCustomerReferenceScreen extends StatelessWidget {
  const ValidateCustomerReferenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: makeHomeTopBar(title: "Validate Reference"),
        bottomNavigationBar: makeBottomBar(),
        body: MultiBlocProvider(
          providers: [
            BlocProvider<MerchantBloc>(
              create: (context) =>  locator<MerchantBloc>()..add(const DataLoad()),
            ),

            BlocProvider<ValidateCustomerReferenceCubit>(
                create: (context) =>  locator<ValidateCustomerReferenceCubit>()
            ),
          ],
          child: Container(
              color: ColorConstants.kWhiteColor,
              child: const ValidateCustomerReference()
          ),
        )
    );
  }
}