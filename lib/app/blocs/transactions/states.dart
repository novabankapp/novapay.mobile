import 'package:equatable/equatable.dart';
import 'package:nave_app/domain/entities/Transaction_ref.dart';

enum TransactionStatus{
  initial,
  success,
  error,
}

class TransactionRefState extends Equatable{
   final TransactionRef ref;
   const TransactionRefState({required this.ref});

  @override
  // TODO: implement props
  List<Object?> get props => [ref];
}

class TransactionState extends Equatable{
    final List<dynamic> myList;
    final bool hasReachedMax;
    final TransactionStatus status;
    const TransactionState({
      this.myList = const <dynamic>[],
      this.hasReachedMax = false,
      this.status = TransactionStatus.initial
    });
    TransactionState copyWith({
      List<dynamic>? myList,
      bool? hasReachedMax,
      TransactionStatus? status,
    }) {
      return TransactionState(
        myList: myList ?? this.myList,
        hasReachedMax: hasReachedMax ?? this.hasReachedMax,
        status: status ?? this.status,
      );
    }

    @override
    List<Object?> get props => [myList, hasReachedMax, status];
}


