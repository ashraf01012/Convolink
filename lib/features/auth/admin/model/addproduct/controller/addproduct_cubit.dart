import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'addproduct_state.dart';

class AddproductCubit extends Cubit<AddproductState> {
  AddproductCubit() : super(AddproductInitial());
}
