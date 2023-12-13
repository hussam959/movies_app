import 'package:flutter/material.dart';

extension NonNullString on String? {
  String orEmpty(){
    if(this == null){
      return "";
    }else{
      return this!;
    }
  }
}

extension NonNullInt on int?{
  int orZero(){
    if(this == null){
      return 0;
    }else{
      return this!;
    }
  }
}

extension NonNullDouble on double?{
  double orZeroDouble(){
    if(this == null){
      return 0.0;
    }else{
      return this!;
    }
  }
}

extension EmptyPaddingSizedBox on num{
  SizedBox get ph => SizedBox(height: toDouble(),);

  SizedBox get pw => SizedBox(width: toDouble(),);
}