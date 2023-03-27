import 'package:equatable/equatable.dart';

class GenerateTRNState extends Equatable{
  final String? trn;
  const GenerateTRNState({this.trn = null});

  @override
  // TODO: implement props
  List<Object?> get props => [trn];
}
class TRNInitial extends GenerateTRNState{
   TRNInitial({required String? trn}) : super(trn : trn);
}
class TRNLoading extends GenerateTRNState{
  TRNLoading({required String? trn}) : super(trn : trn);
}
class TRNLoaded extends GenerateTRNState{
  TRNLoaded({required String? trn}) : super(trn : trn);
}
class TRNFailure extends GenerateTRNState{
  TRNFailure({required String? trn}) : super(trn : trn);
}