import 'package:equatable/equatable.dart';

abstract class DataEvent extends Equatable {
     const DataEvent();
     @override
     List<dynamic> get props => [];
}

class DataLoad extends DataEvent {
     const DataLoad();
}

class DataByCategoryLoad extends DataEvent{
    final int categoryId;
    const DataByCategoryLoad(this.categoryId);
}

class DataRefresh extends DataEvent {
    final int? categoryId;
    const DataRefresh(this.categoryId);
}