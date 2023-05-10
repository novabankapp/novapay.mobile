import 'dart:io';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nave_app/app/blocs/bank_bloc/bloc.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';
import 'package:nave_app/app/blocs/merchants/bloc.dart';
import 'package:nave_app/app/blocs/transactions/generate_cubit_state.dart';
import 'package:nave_app/app/blocs/transactions/generate_trn_cubit.dart';
import 'package:nave_app/app/cubits/transactions/validate_customer_reference_cubit.dart';
import 'package:nave_app/app/ui/icons/nova_icons_icons.dart';
import 'package:nave_app/app/ui/widgets/common/alerts/alert_dialog.dart';
import 'package:nave_app/app/ui/widgets/common/rounded_input_field.dart';
import 'package:nave_app/data/remote/models/transaction/Generate_trn_request.dart';
import 'package:nave_app/data/remote/models/transaction/validate_customer_reference_reference.dart';
import 'package:nave_app/data/remote/models/transaction/validate_customer_reference_response.dart';
import 'package:nave_app/domain/entities/Bank.dart';
import 'package:nave_app/domain/entities/Merchant.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ValidateCustomerReference extends StatefulWidget{
  const ValidateCustomerReference({
    Key? key,

  }) : super(key: key);
  @override
  State<ValidateCustomerReference>  createState() => _ValidateCustomerReferenceState();

}

class _ValidateCustomerReferenceState extends State<ValidateCustomerReference> {

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
    String? trn = null;
    String? error = null;
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Container(
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
                      child: DropdownSearch<Merchant>(
                        items: merchantState.myList.cast<Merchant>(),
                        itemAsString: (Merchant s) => s.name!,
                        //enabled: !_trnGenerated,
                        dropdownBuilder: (context, i) => Text("${i?.name}"),
                        validator: (Merchant? service){
                          if(service == null){
                            return "Please Select a service";
                          }
                        },
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

              RoundedInputField(
                width: size.width,
                background: ColorConstants.kGrayColor,
                onChanged: (value) {},
                textInputAction : TextInputAction.done,
                borderRadius: 4,
                //readOnly: _trnGenerated,
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
              BlocConsumer<ValidateCustomerReferenceCubit,ValidateCustomerReferenceResponse?>(
                  listener: (context, state) {
                    if(state is ValidateCustomerReferenceResponse) {
                      if(state.success ?? false) {
                        showAlertDialog(context,
                            "Customer Reference", <Widget>[
                              Column(
                                children: [
                                  const Icon(NovaIcons.ok_circled,
                                      color: Colors.green),
                                  const Text(
                                      'The Customer Reference Details'),
                                  Text(
                                      'Customer Name : ${state.customerName}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.sp
                                      )),
                                ],
                              ),
                            ],
                            <Widget>[
                              TextButton(
                                child: const Text('Ok'),
                                onPressed: () {
                                  if (context.mounted) {
                                    Navigator.of(context)
                                        .pop();
                                  }
                                },
                              ),
                            ]
                        );
                      }
                      else{
                        showAlertDialog(context,"Customer Reference Not Found",
                          <Widget>[  const Icon(Icons.question_mark,
                              color: Colors.red)],
                          <Widget>[
                            TextButton(
                              child: const Text('Ok'),
                              onPressed: () {
                                if (context.mounted) {
                                  Navigator.of(context)
                                      .pop();
                                }
                              },
                            ),
                          ]

                        );
                      }
                    }
                  },
                  builder: (context, state) {
                    if (state is TRNLoading) {

                      _isButtonDisabled = true;

                    }
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
                            await _validateButtonPressed(context, ValidateCustomerReferenceRequest(
                                customerReference: _refController.text,
                                serviceUniqueIdentifier:"1234"));
                            _isButtonDisabled =false;
                            _btnController.success();
                          }
                          else{
                            _btnController.stop();
                          }

                        },
                        child: const Text('Validate', style: TextStyle( color:  ColorConstants.kWhiteColor),),
                      ),
                    );
                  }
              )
            ],
          ),
        ),
      ),
    );




  }
  Future<void> _validateButtonPressed(BuildContext context, ValidateCustomerReferenceRequest request) async {
    await context.read<ValidateCustomerReferenceCubit>().validateCustomerReference(request);

  }
}