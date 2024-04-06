import 'package:flutter/material.dart';
class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(
                  30.0,
                ),
                bottomEnd: Radius.circular(
                  30.0,
                ),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                const Image(
                  image: NetworkImage(
                    'https://wallpapers-fenix.eu/download.php?ID=170798&absol=211208/103359650.jpg&dwn=14',
                  ),
                  height: 200.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 200.0,
                  color: Colors.black.withOpacity(.7),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: const Text(
                    'Nature',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
