import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/bank_bloc/bloc.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';
import 'package:nave_app/app/blocs/merchants/bloc.dart';
import 'package:nave_app/domain/entities/Bank.dart';
import 'package:nave_app/domain/entities/Service.dart';

class GenerateTRN extends StatefulWidget{
  const GenerateTRN({
    Key? key,

  }) : super(key: key);
  @override
  State<GenerateTRN>  createState() => _GenerateTRNState();
  
}

class _GenerateTRNState extends State<GenerateTRN> {
  @override
  void initState() {
    super.initState();
   
  }
  @override
  void dispose() {
  
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MerchantBloc, DataState>(
        listener: (merchantContext, merchantState) {

    },
    builder:    (merchantContext, merchantState) {
           return BlocConsumer<BankBloc, DataState>(
           listener: (bankContext, bankState) {

           },
           builder:    (bankContext, bankState) {
               return Center(
                 child:Column(
                   children: [
                     DropdownSearch<Service>(
                       items: merchantState.myList.cast<Service>(),
                       itemAsString: (Service s) => s.name!,
                       dropdownBuilder: (context, i) => Text("${i?.name}"),
                       dropdownDecoratorProps: const DropDownDecoratorProps(
                         dropdownSearchDecoration: InputDecoration(
                           labelText: "Service",
                           hintText: "Select a service",
                           filled: true,
                         ),
                       ),
                       popupProps: const PopupPropsMultiSelection.modalBottomSheet(
                         showSearchBox: true
                         //disabledItemFn: (int i) => i <= 3,
                       ),
                     ),
                     DropdownSearch<Bank>(
                       items: bankState.myList.cast<Bank>(),
                       itemAsString: (Bank s) => s.name!,
                       dropdownBuilder: (context, i) => Text("${i?.name}"),
                       dropdownDecoratorProps: const DropDownDecoratorProps(
                         dropdownSearchDecoration: InputDecoration(
                           labelText: "Bank",
                           hintText: "Select a Bank",
                           filled: true,
                         ),
                       ),
                       popupProps: const PopupPropsMultiSelection.modalBottomSheet(
                           showSearchBox: true
                         //disabledItemFn: (int i) => i <= 3,
                       ),
                     ),
                   ],
                 ),
               );
        });
    });


  }
}