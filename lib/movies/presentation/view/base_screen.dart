

import 'package:flutter/material.dart';
import 'package:movies_app/utils/resources/color_manager.dart';


class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: ColorManager.grey1,
    );
  }
}