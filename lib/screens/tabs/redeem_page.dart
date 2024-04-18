import 'package:flutter/material.dart';
import 'package:smart_plastic_mobile/utlis/colors.dart';
import 'package:smart_plastic_mobile/widgets/drawer_widget.dart';
import 'package:smart_plastic_mobile/widgets/text_widget.dart';

class RedeemPage extends StatelessWidget {
  const RedeemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: primary,
        centerTitle: true,
        title: TextWidget(
          text: 'Redeem',
          fontSize: 18,
          fontFamily: 'Bold',
          color: Colors.white,
        ),
      ),
    );
  }
}
