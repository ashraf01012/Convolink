import 'dart:io';
// ignore: unused_import
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/constants.dart';
import 'package:untitled/core/utils/context_extension.dart';
import 'package:untitled/features/auth/admin/model/addproduct/controller/addproduct_cubit.dart';

class NewProductPage extends StatelessWidget {
  const NewProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddproductCubit(),
      child: BlocBuilder<AddproductCubit, AddproductState>(
        builder: (context, state) {
          final AddproductCubit cubit = context.read<AddproductCubit>();

          return Scaffold(
            backgroundColor: kPrimaryColor,
            appBar: AppBar(
              backgroundColor: kSecondryColor,
              title: const Text('Add new product'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ///name
                  TextFormField(
                    decoration: decoration.copyWith(labelText: 'Name'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.name,
                    controller: cubit.nameController,
                  ),
                  SizedBox(
                    height: context.height / 15,
                  ),

                  ///description
                  TextFormField(
                    decoration: decoration.copyWith(labelText: 'Description'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.name,
                    controller: cubit.descController,
                  ),
                  SizedBox(
                    height: context.height / 15,
                  ),

                  ///description
                  TextFormField(
                    decoration:
                        decoration.copyWith(labelText: 'Available count'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.number,
                    controller: cubit.qntController,
                  ),
                  SizedBox(
                    height: context.height / 15,
                  ),

                  ///description
                  TextFormField(
                    decoration: decoration.copyWith(labelText: 'Price'),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.number,
                    controller: cubit.priceController,
                  ),
                   SizedBox(
                    height: context.height / 15,
                  ),

                  IconButton(
                      onPressed: cubit.pickProductImage,
                      icon: const Icon(CupertinoIcons.photo)),

                  if (cubit.image != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.file(
                        File(cubit.image!.path),
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),

                  const Spacer(),
                  TextButton(
                      onPressed: () => cubit.addProduct(context),
                      child: const Text(
                        "add product",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
