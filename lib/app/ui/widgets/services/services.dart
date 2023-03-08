import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/common/data_event.dart';
import 'package:nave_app/app/blocs/common/data_state.dart';
import 'package:nave_app/app/blocs/merchants/bloc.dart';
import 'package:nave_app/app/ui/widgets/common/custom_circular_progress_indicator.dart';
import 'package:nave_app/app/ui/widgets/common/list_tile.dart';

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


    return Container(
      child: BlocConsumer<MerchantBloc, DataState>(
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
                        ? content : buildList(context, state, index);
                  },
                ),
              );
            } else {
              return const Center(
                child: Text('Failed to fetch services.'),
              );
            }
          },
      )

    );


  }

}