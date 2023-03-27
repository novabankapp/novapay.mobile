import 'package:equatable/equatable.dart';

abstract class TRNEvent extends Equatable {
  const TRNEvent();
  @override
  List<dynamic> get props => [];
}

class GenerateTRN extends TRNEvent {
  const GenerateTRN();
}