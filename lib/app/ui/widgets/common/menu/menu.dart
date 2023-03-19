
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nave_app/app/blocs/transactions/events.dart';
import 'package:nave_app/app/blocs/transactions/states.dart';
import 'package:nave_app/app/blocs/transactions/transaction_bloc.dart';
import 'package:nave_app/app/ui/icons/nova_icons_icons.dart';
import 'package:nave_app/app/ui/widgets/common/menu/menu_card.dart';
import 'package:nave_app/domain/entities/Transaction_ref.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

class Menu extends StatefulWidget{
  const Menu({
    Key? key,

  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();

}
class _MenuState extends State<Menu> {
  Widget content = const Text("");
  ListTile makeListTile(TransactionRef transaction, int number) {
    var used = transaction.used!;
    var leadIcon = used ? NovaIcons.ok : NovaIcons.cancel;
    return ListTile(
        tileColor: ColorConstants.kPrimaryDarkColor,
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: const EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(
              border: Border(
                  right: BorderSide(
                      width: 1.0, color: ColorConstants.kPrimaryColor))),
          child: Icon(
            leadIcon,
            color: ColorConstants.kPrimaryColor,),
        ),

        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.merchant!.name!,
                  style: TextStyle(color: ColorConstants.kPrimaryColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  transaction.bank!.name!,
                  style: TextStyle(color: ColorConstants.kPrimaryLightColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),

          ],
        ),
        trailing:

        Text(
          "K${formatCurrency.format(transaction.amount).replaceAll("\$", "")}",
          style: TextStyle(color: ColorConstants.kPrimaryColor,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
        ),
        onTap: () async {
          //route

        }
    );
  }
  Card makeListItem(TransactionRef transaction,int number) => Card(
    elevation: 8.0,
    margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
    child: Container(
        decoration: BoxDecoration(
          color: ColorConstants.kWhiteColor,
          borderRadius: BorderRadius.circular(4),
          boxShadow: const [
            BoxShadow(
                color: Colors.black54, // shadow color
                blurRadius: 2, // shadow radius
                offset: Offset(1, 3), // shadow offset
                spreadRadius:0.1, // The amount the box should be inflated prior to applying the blur
                blurStyle: BlurStyle.normal // set blur style
            ),
          ],
        ),
      child: makeListTile(transaction,number),
    ),
  );

  final formatCurrency = NumberFormat.simpleCurrency(locale: Platform.localeName,name: "");
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TransactionBloc, TransactionState>(
      listener: (context, state) {

      },
      builder:    (context, state) {

          return RefreshIndicator(
            onRefresh: () async {
              context.read<TransactionBloc>().add(const TransactionRefresh(null));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             
               SizedBox(
                 height: 200,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12,
                  ),
                  children: [
                    makeMenuCard(text: "Services", iconData: Icons.access_alarm),
                    makeMenuCard(text: "Banks", iconData: Icons.account_balance),
                    makeMenuCard(text: "History", iconData: Icons.access_time)
                  ],
                )
              ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Past Transactions",
                    style: TextStyle(color: ColorConstants.kPrimaryColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                state.status == TransactionStatus.success?
                Expanded(
                   child: ListView.builder(
                  itemCount: state.hasReachedMax ? state.myList.length : state.myList.length + 1,
                  itemBuilder: (context, index) {

                    return index >= state.myList.length
                        ? content : makeListItem(state.myList[index], index + 1);
                  },
                )) : const Center(
                    child: Text('No Past Transactions'),
                    ),
              ],
            ),
          );

      },
    );

  }

}