import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:smart_plastic_mobile/screens/home_screen.dart';
import 'package:smart_plastic_mobile/utlis/colors.dart';
import 'package:smart_plastic_mobile/widgets/button_widget.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextWidget(
                text: 'Total Points: 150 pts',
                fontSize: 18,
                color: secondary,
                fontFamily: 'Bold',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                          text: 'Item Name',
                          fontSize: 11,
                          color: grey,
                        ),
                        TextWidget(
                          text: 'Sardines',
                          fontSize: 32,
                          color: secondary,
                          fontFamily: 'Bold',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextWidget(
                          text: 'Equivalent points',
                          fontSize: 10,
                          color: grey,
                        ),
                        TextWidget(
                          text: '125 pts',
                          fontSize: 18,
                          color: secondary,
                          fontFamily: 'Bold',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ButtonWidget(
                          radius: 100,
                          height: 35,
                          width: 125,
                          fontSize: 12,
                          label: 'REDEEM',
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: const Text(
                                        'Redeem Confirmation',
                                        style: TextStyle(
                                            fontFamily: 'QBold',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      content: const Text(
                                        'Are you sure you want to redeem this item?',
                                        style:
                                            TextStyle(fontFamily: 'QRegular'),
                                      ),
                                      actions: <Widget>[
                                        MaterialButton(
                                          onPressed: () =>
                                              Navigator.of(context).pop(true),
                                          child: const Text(
                                            'Close',
                                            style: TextStyle(
                                                fontFamily: 'QRegular',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        MaterialButton(
                                          onPressed: () async {
                                            Navigator.of(context).pop();
                                            showDialog(
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                      title: const Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .check_circle_outline,
                                                            color: Colors.green,
                                                            size: 150,
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'You have succesfully redeemed this item!',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                fontFamily:
                                                                    'Bold',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ],
                                                      ),
                                                      actions: <Widget>[
                                                        MaterialButton(
                                                          onPressed: () async {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();

                                                            showDialog(
                                                                barrierDismissible:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) =>
                                                                        AlertDialog(
                                                                          title:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              const Text(
                                                                                'QR Code',
                                                                                style: TextStyle(fontSize: 18, fontFamily: 'Bold', fontWeight: FontWeight.bold),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 300,
                                                                                width: 300,
                                                                                child: QrImageView(
                                                                                  data: '123',
                                                                                  version: QrVersions.auto,
                                                                                  size: 200.0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                          ),
                                                                          actions: <Widget>[
                                                                            MaterialButton(
                                                                              onPressed: () async {
                                                                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const HomeScreen()));
                                                                              },
                                                                              child: const Text(
                                                                                'Continue',
                                                                                style: TextStyle(fontFamily: 'QRegular', fontWeight: FontWeight.bold),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ));
                                                          },
                                                          child: const Text(
                                                            'Continue',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'QRegular',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ],
                                                    ));
                                          },
                                          child: const Text(
                                            'Continue',
                                            style: TextStyle(
                                                fontFamily: 'QRegular',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ));
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
