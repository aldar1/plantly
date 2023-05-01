import 'package:flutter/material.dart';

class AppBarPop extends StatelessWidget {
  const AppBarPop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Positioned(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: IconButton(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 4),
            onPressed: ()=> Navigator.pop(context),
            alignment: Alignment.topLeft,
            icon: const Icon(Icons.arrow_circle_left_outlined,color: Colors.white,size: 40,),
            splashRadius: 48/2,
          ),
        )
      ),
    );
  }
}