import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/constants.dart';
import 'package:untitled/features/auth/dashboard/model/product/controller/product_cubit.dart';
import 'package:untitled/features/auth/dashboard/model/product/view/components/product_item.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ProductCubit.instance,
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          final ProductCubit controller = context.read<ProductCubit>();
          return SafeArea(
            child: Scaffold(
              backgroundColor: kPrimaryColor,
              body: state is ProductStateLoading
                  ? const CircularProgressIndicator()
                  : state is ProductStateEmpty
                      ? const Center(
                          child: Icon(
                            CupertinoIcons.delete,
                            size: 100,
                            color: Colors.blue,
                          ),
                        )
                      : ListView.builder(
                          itemBuilder: (_, int index) => ProductItem(
                            productModel: controller.products[index],
                            controller: controller,
                          ),
                          itemCount: controller.products.length,
                        ),
            ),
          );
        },
      ),
    );
  }
}
