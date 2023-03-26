import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nave_app/app/blocs/bank_bloc/bloc.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';
import 'package:nave_app/app/blocs/merchants/bloc.dart';
import 'package:nave_app/app/blocs/transactions/generate_trn_cubit.dart';
import 'package:nave_app/app/ui/widgets/common/rounded_input_field.dart';
import 'package:nave_app/data/remote/models/transaction/Generate_trn_request.dart';
import 'package:nave_app/domain/entities/Bank.dart';
import 'package:nave_app/domain/entities/Service.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class GenerateTRN extends StatefulWidget{
  const GenerateTRN({
    Key? key,

  }) : super(key: key);
  @override
  State<GenerateTRN>  createState() => _GenerateTRNState();
  
}

class _GenerateTRNState extends State<GenerateTRN> {
  final _amountController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _refController = TextEditingController();
  bool _isButtonDisabled = false;
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
  @override
  void initState() {
    super.initState();
   
  }
  @override
  void dispose() {
    _btnController.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<MerchantBloc, DataState>(
        listener: (merchantContext, merchantState) {

    },
    builder:    (merchantContext, merchantState) {

               return Container(
                 padding: const EdgeInsets.fromLTRB(8, 24, 2, 8),
                 margin: const EdgeInsets.symmetric(horizontal: 8),
                 child:Column(
                   children: [

                     BlocConsumer<MerchantBloc, DataState>(
                         listener: (merchantContext, merchantState) {

                         },
                         builder:    (merchantContext, merchantState) {
                           return Container(
                             color:  ColorConstants.kGrayColor,
                             margin: const EdgeInsets.symmetric(vertical: 10),
                             padding: const EdgeInsets.symmetric(vertical: 10),
                             child: DropdownSearch<Service>(
                               items: merchantState.myList.cast<Service>(),
                               itemAsString: (Service s) => s.name!,
                               dropdownBuilder: (context, i) => Text("${i?.name}"),
                               dropdownDecoratorProps: const DropDownDecoratorProps(
                                 dropdownSearchDecoration: InputDecoration(
                                   contentPadding: EdgeInsets.fromLTRB(10, 4, 0, 0),
                                   hintStyle: TextStyle(
                                       color : ColorConstants.kBlackColor
                                   ),
                                   labelStyle: TextStyle(
                                       color: ColorConstants.kPrimaryColor
                                   ),
                                   hintText: "Select Service",
                                   labelText: "Select Service",
                                   border: InputBorder.none,
                                 ),
                               ),
                               popupProps: const PopupPropsMultiSelection.modalBottomSheet(
                                   showSearchBox: true
                                 //disabledItemFn: (int i) => i <= 3,
                               ),
                             ),
                           );
                         }
                     ),
                     BlocConsumer<BankBloc, DataState>(
                         listener: (bankContext, bankState) {

                         },
                         builder:    (bankContext, bankState) {
                           return Container(
                             color:  ColorConstants.kGrayColor,
                             margin: const EdgeInsets.symmetric(vertical: 10),
                             padding: const EdgeInsets.symmetric(vertical: 10),
                             child: DropdownSearch<Bank>(
                               items: bankState.myList.cast<Bank>(),
                               itemAsString: (Bank s) => s.name!,
                               dropdownBuilder: (context, i) => Text("${i?.name}"),
                               dropdownDecoratorProps: const DropDownDecoratorProps(
                                 dropdownSearchDecoration: InputDecoration(
                                   contentPadding: EdgeInsets.fromLTRB(10, 4, 0, 0),
                                   hintStyle: TextStyle(
                                       color : ColorConstants.kBlackColor
                                   ),
                                   labelStyle: TextStyle(
                                       color: ColorConstants.kPrimaryColor,
                                   ),
                                   hintText: "Select Bank",
                                   labelText: "Select Bank",
                                   border: InputBorder.none,
                                 ),
                               ),
                               popupProps: const PopupPropsMultiSelection.modalBottomSheet(
                                   showSearchBox: true
                                 //disabledItemFn: (int i) => i <= 3,
                               ),
                             ),
                           );
                         }
                     ),
                     RoundedInputField(
                       width: size.width,
                       background: ColorConstants.kGrayColor,
                       onChanged: (value) {},
                       textInputAction : TextInputAction.done,
                       borderRadius: 4,
                       keyboardType: const TextInputType.numberWithOptions(
                         signed: true,
                         decimal: true
                       ),
                       labelText:"Amount",
                       isPassword: false,
                       controller: _amountController,
                       validator: (value) {
                         if (value!.isEmpty) {
                           return 'Please enter amount';
                         }
                         return null;
                       },
                       onSaved: (String? value) {

                       },
                     ),
                     RoundedInputField(
                       width: size.width,
                       background: ColorConstants.kGrayColor,
                       onChanged: (value) {},
                       textInputAction : TextInputAction.done,
                       borderRadius: 4,
                       labelText:"Customer Reference",
                       isPassword: false,
                       controller: _refController,
                       validator: (value) {
                         if (value!.isEmpty) {
                           return 'Please Customer Reference';
                         }
                         return null;
                       },
                       onSaved: (String? value) {

                       },
                     ),
                     BlocConsumer<GenerateTRNCubit,String?>(
                         listener: (context, state) {

                         },
                         builder: (context, state) {

                           return  Container(
                             padding: const EdgeInsets.symmetric(vertical: 10),
                             child: RoundedLoadingButton(
                               width: size.width,
                               color: ColorConstants.kPrimaryColor,
                               borderRadius: 4,
                               controller: _btnController,
                               onPressed: _isButtonDisabled  ? null : () async {
                                 if (_formKey.currentState!.validate()) {
                                   _isButtonDisabled = true;
                                   await _generateButtonPressed(context, GenerateTrnRequest(
                                       customerReference: "1234",
                                       amount: 1200.00,
                                       serviceUniqueIdentifier:"1234",
                                       financialServiceUniqueIdentifier: "12345"));
                                   _isButtonDisabled =false;
                                 }
                                 else{
                                   _btnController.stop();
                                 }

                               },
                               child: const Text('Generate', style: TextStyle( color:  ColorConstants.kWhiteColor),),
                             ),
                           );
                         }
                     )
                   ],
                 ),
               );

    });


  }
  Future<void> _generateButtonPressed(BuildContext context, GenerateTrnRequest request) async {
    await context.read<GenerateTRNCubit>().generatePRN(request);

  }
}