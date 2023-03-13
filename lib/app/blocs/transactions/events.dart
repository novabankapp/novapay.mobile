import 'package:equatable/equatable.dart';

abstract class TransactionEvent extends Equatable {
     const TransactionEvent();
     @override
     List<dynamic> get props => [];
}

class TransactionLoad extends TransactionEvent {
     const TransactionLoad();
}

class TransactionByCustomerRefLoad extends TransactionEvent{
    final String ref;
    const TransactionByCustomerRefLoad(this.ref);
}

class TransactionRefresh extends TransactionEvent {
    final String? ref;
    const TransactionRefresh(this.ref);
}