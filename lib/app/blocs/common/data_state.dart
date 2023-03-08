import 'package:equatable/equatable.dart';

enum DataStatus{
  initial,
  success,
  error,
}

class DataState extends Equatable{
    final List<dynamic> myList;
    final bool hasReachedMax;
    final DataStatus status;
    const DataState({
      this.myList = const <dynamic>[],
      this.hasReachedMax = false,
      this.status = DataStatus.initial
    });

    DataState copyWith({
      List<dynamic>? myList,
      bool? hasReachedMax,
      DataStatus? status,
    }) {
      return DataState(
        myList: myList ?? this.myList,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
        status: status ?? this.status,
      );
    }

    @override
    List<Object?> get props => [myList, hasReachedMax, status];
}


