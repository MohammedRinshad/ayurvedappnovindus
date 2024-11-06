import 'package:flutter/material.dart';
import 'package:novinduscalicutinterview/utils/styles.dart';
import 'package:novinduscalicutinterview/widgets/dash_line_widget.dart';

import '../../utils/colors.dart';

class ReceiptPrintScreen extends StatelessWidget {
  static const route = "ReceiptPrintScreen";
  const ReceiptPrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  // Wrap the Row in a SingleChildScrollView
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/Layer_1-2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'kumarakam',
                              style: ts16mcBlack,
                            ),
                            Text(
                              "Cheepunakkal po, kumaram, kottayam, kerala, 679345",
                              style: ts10mcgrey,
                            ),
                            Text(
                              "email@unknown@gmail.com",
                              style: ts10mcgrey,
                            ),
                            Text(
                              "Mob +917645325632, +917456345632",
                              style: ts10mcgrey,
                            ),
                            Text(
                              'GST NO:3245326ASE12454',
                              style: ts12mcBlack,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: colorACACAC,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Patient Details",
                  style: ts18mcgreen,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: ts12mcBlack,
                            ),
                            Text(
                              'Address',
                              style: ts12mcBlack,
                            ),
                            Text(
                              'Whatsapp number',
                              style: ts12mcBlack,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salih T',
                              style: ts10mcgrey,
                            ),
                            Text(
                              'Mungakkal house,kozhikkode',
                              style: ts10mcgrey,
                            ),
                            Text(
                              '+917564322413',
                              style: ts10mcgrey,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Booked on',
                              style: ts12mcBlack,
                            ),
                            Text(
                              'Treatment Date',
                              style: ts12mcBlack,
                            ),
                            Text(
                              'Treatment Time',
                              style: ts12mcBlack,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '31/10/2024',
                                    style: ts10mcgrey,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '|',
                                    style: ts10mcgrey,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '12:12 pm',
                                    style: ts10mcgrey,
                                  ),
                                ],
                              ),
                              Text(
                                'Mungakkal house,kozhikkode',
                                style: ts10mcgrey,
                              ),
                              Text(
                                '+917564322413',
                                style: ts10mcgrey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const DashedLine(),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Treatment',
                                style: ts18mcgreen,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'panchakarma',
                                style: ts10mcgrey,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Njavarakizhi',
                                style: ts10mcgrey,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'panchakarma',
                                style: ts10mcgrey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: ts18mcgreen,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '₹230',
                              style: ts10mcgrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '₹230',
                              style: ts10mcgrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '₹230',
                              style: ts10mcgrey,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Male',
                              style: ts18mcgreen,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4',
                              style: ts10mcgrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '5',
                              style: ts10mcgrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '6',
                              style: ts10mcgrey,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Female',
                              style: ts18mcgreen,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '6',
                              style: ts10mcgrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '6',
                              style: ts10mcgrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4',
                              style: ts10mcgrey,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total',
                              style: ts18mcgreen,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '₹2540',
                              style: ts10mcgrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '₹2540',
                              style: ts10mcgrey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '₹2540',
                              style: ts10mcgrey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const DashedLine(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Total Amount',
                            style: ts16mcBlack,
                          ),
                          Text(
                            'Discount',
                            style: ts12mcBlack,
                          ),
                          Text(
                            'Advance',
                            style: ts12mcBlack,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '₹7620',
                            style: ts16mcBlack,
                          ),
                          Text(
                            '₹500',
                            style: ts12mcBlack,
                          ),
                          Text(
                            '₹1200',
                            style: ts12mcBlack,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "----------------------",
                      style: ts14cgreybold,
                    )),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Balance',
                        style: ts16mcBlack,
                      ),
                    ],
                  ),
                  const SizedBox(width: 60),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '₹5920',
                        style: ts16mcBlack,
                      ),
                    ],
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("Thank you for choosing us ",
                              style: ts20mcgreen)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                              "Your well-being is our commitment, and we are honored",
                              style: ts10mcgrey)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                              "you have intrusted us with your happy journey ",
                              style: ts10mcgrey)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                      width: 200,
                      height: 80,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Vector 1@2x.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
