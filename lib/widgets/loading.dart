import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kejar_recruitment/constants/colors_const.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mFillColor,
      child: Center(
        child: SpinKitWanderingCubes(
          color: mBlueColor,
          size: 100.0,
          duration: const Duration(milliseconds: 1200),
        ),
      ),
    );
  }
}
