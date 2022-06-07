import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cubitccast_state.dart';

class CubitccastCubit extends Cubit<CubitccastState> {
  CubitccastCubit() : super(CubitccastInitial());
}
