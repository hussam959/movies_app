

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../core/utils/values_manager.dart';

Widget buildImagePlaceHolder(double width, double height){
  return Shimmer.fromColors(
    baseColor: Colors.grey[850]!,
    highlightColor: Colors.grey[800]!,
    child: Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius:
        BorderRadius.all(
            Radius.circular(AppSize.s8)),
      ),
    ),
  );
}