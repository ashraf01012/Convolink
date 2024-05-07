import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled/core/repo/database_repo.dart';
import 'package:untitled/features/auth/dashboard/model/product/controller/product_cubit.dart';

part 'addproduct_state.dart';

class AddproductCubit extends Cubit<AddproductState> {
  AddproductCubit() : super(AddproductInitial());
  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController qntController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  XFile? image;
  Future<void> pickProductImage() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    image = await picker.pickImage(source: ImageSource.gallery);

    emit(AddproductInitial());
  }

  Future<void> takeProductImage() async {
    final ImagePicker picker = ImagePicker();
// take an image.
    image = await picker.pickImage(source: ImageSource.camera);
    emit(AddproductInitial());
  }

  Future<void> addProduct(context) async {
    DatabaseRepo db = DatabaseRepo();
    db.initDB();
    db.insertProduct(
      nameController.text,
      descController.text,
      int.parse(qntController.text),
      double.parse(priceController.text),
      await image!.readAsBytes(),
    );
    await ProductCubit.instance.init();
    Navigator.pop(context);
}
}
