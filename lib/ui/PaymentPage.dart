import 'package:flutter/material.dart';
import 'package:movie_app/common_widgets/blue_button.dart';
import 'package:movie_app/common_widgets/check_out_widget.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1E25),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment Details",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            CheckOutWidgets(
              size: double.infinity,
              fieldName: "Your Email",
              hintTextField: "Milesmorales@gmail.com",
            ),
            CheckOutWidgets(
              size: double.infinity,
              fieldName: "Cardholder Name",
              hintTextField: "Miles Morales",
            ),
            CheckOutWidgets(
              size: double.infinity,
              fieldName: "Card Number",
              hintTextField: "**** **** **** 51446",
            ),
            Row(
              children: [
                Expanded(
                  child: CheckOutWidgets(
                    size: 170,
                    fieldName: "Date",
                    hintTextField: "02 Nov 2021",
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: CheckOutWidgets(
                    size: 170,
                    fieldName: "CVV",
                    hintTextField: "123",
                  ),
                ),
              ],
            ),
            Spacer(),
            BlueButton(
              buttonText: "Pay Now",
              myFunc: () {
                setState(() {});
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 349,
                      color: Color(0xff54A8E5),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox(
                              width: 250,
                              child: const Text(
                                textAlign: TextAlign.center,
                                'Your payment was successful',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              width: 302,
                              child: const Text(
                                textAlign: TextAlign.center,
                                "Adele is a Scottish heiress whose extremely wealthy family owns estates and grounds. When she was a teenager. Read More",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              height: 34,
                            ),
                            SizedBox(
                              width: 315,
                              height: 58,
                              child: TextButton(
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12), // Button border radius
                                      // You can also customize other properties like border color, width, etc.
                                    ),
                                  ),
                                  backgroundColor:
                                      WidgetStateProperty.all<Color>(
                                          Color(0xff1B1E25)),
                                ),
                                child: Text(
                                  'See E-Ticket',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
