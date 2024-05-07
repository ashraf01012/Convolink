import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/constants.dart';
import 'package:untitled/features/auth/dashboard/controller/dashboard_cubit.dart';
import 'package:untitled/features/auth/dashboard/model/cart/view/page/cart_page.dart';
import 'package:untitled/features/auth/dashboard/model/favorite/view/page/favorite_page.dart';
import 'package:untitled/features/auth/dashboard/model/product/view/page/product_page.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          DashboardCubit cubit = context.read<DashboardCubit>();
          return Scaffold(
            appBar: AppBar(
              backgroundColor: kSecondryColor,
              //elevation: 0,
              actions: [
                const Text('Log out',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    cubit.logOut(context);
                  },
                  icon: const Icon(
                    Icons.logout,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            body: PageView(
              controller: cubit.pageController,
              onPageChanged: cubit.onChangeTab,
              children: const [
                ProductPage(),
                FavoritePage(),
                CartPage(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: kSecondryColor,
              selectedItemColor: Colors.white,
              currentIndex: cubit.currentIndex,
              onTap: cubit.onChangeTab,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.collections_solid,
                    size: 25,
                  ),
                  label: 'product',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.heart_solid,
                    size: 25,
                  ),
                  label: 'favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.cart_fill,
                    size: 25,
                  ),
                  label: 'cart',
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
