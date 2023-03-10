import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/common/data_event.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';
import 'package:nave_app/app/blocs/merchants/bloc.dart';
import 'package:nave_app/app/ui/widgets/common/list_tile.dart';
import 'package:nave_app/app/ui/widgets/services/services.dart';
import 'package:nave_app/infrastructure/di/injection.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: BlocProvider<MerchantBloc>(
      create: (context) =>  locator<MerchantBloc>()..add(const DataLoad()),
      child: const Services(),
    )
    );
  }
}

