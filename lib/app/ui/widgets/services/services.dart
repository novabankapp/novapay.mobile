import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:nave_app/app/blocs/common/data_event.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';
import 'package:nave_app/app/blocs/merchants/bloc.dart';
import 'package:nave_app/app/ui/widgets/common/custom_circular_progress_indicator.dart';
import 'package:nave_app/app/ui/widgets/common/list_tile.dart';
import 'package:nave_app/data/hive/models/generate_trn_temp.dart';
import 'package:nave_app/data/remote/clients/api_constants.dart';
import 'package:nave_app/domain/entities/Service.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';

class Services extends StatefulWidget {
  const Services({
    Key? key,

  }) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}
class _ServicesState extends State<Services> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()..addListener(_onScroll);
  }
  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }
  Widget content = const Text("");
  void _onScroll() {
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (currentScroll == maxScroll) {
        content =  const Center(
            child:CustomCircularProgressIndicator()
        );

      context.read<MerchantBloc>().add(const DataLoad());
    }
  }



  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    ListTile makeListTile(Service service, int number) => ListTile(
        tileColor: ColorConstants.kPrimaryLightColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        leading: Container(
          padding: const EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(
              border: Border(
                  right: BorderSide(width: 1.0, color: Colors.white24))),
          child: Text("$number",style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold)
          ),
        ),

        title: Text(
          service.name!,
          style: TextStyle(color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold),
        ),
        trailing:
        const Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0),
        onTap: () async{
           //save in hive
          var box = await Hive.openBox(ApiConstants.GENERATETRN);
          box.get(0);
          var generateTRN = GenerateTrnHiveModel()
          ..serviceUniqueIdentifier = service.uniqueIdentifier;
          box.add(generateTRN);
          //route

        }
    );
    Card makeListItem(Service service,int number) => Card(
      elevation: 8.0,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(service,number),
      ),
    );


    return BlocConsumer<MerchantBloc, DataState>(
        listener: (context, state) {

        },
        builder:    (context, state) {
          if (state.status == DataStatus.initial) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.status == DataStatus.success) {
            return RefreshIndicator(
              onRefresh: () async {
                context.read<MerchantBloc>().add(const DataRefresh(null));
              },
              child: ListView.builder(
                controller: _scrollController,
                itemCount: state.hasReachedMax ? state.myList.length : state.myList.length + 1,
                itemBuilder: (context, index) {

                  return index >= state.myList.length
                      ? content : makeListItem(state.myList[index], index + 1);
                },
              ),
            );
          } else {
            return const Center(
              child: Text('Failed to fetch services.'),
            );
          }
        },
    );


  }

}