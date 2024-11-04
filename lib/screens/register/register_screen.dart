import 'package:flutter/material.dart';
import 'package:novinduscalicutinterview/providers/radio_button_provider.dart';
import 'package:novinduscalicutinterview/utils/colors.dart';
import 'package:novinduscalicutinterview/utils/styles.dart';
import 'package:novinduscalicutinterview/widgets/login_button_widget.dart';
import 'package:novinduscalicutinterview/widgets/text_form_field.dart';
import 'package:provider/provider.dart';
import '../../providers/treatment_count_provider.dart';
import '../receipt/receipt_print.dart';

class RegisterScreen extends StatelessWidget {
  static const route = '/register';
  RegisterScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController whatsController = TextEditingController();
  TextEditingController branchController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController totalAmountController = TextEditingController();
  TextEditingController discountController = TextEditingController();
  TextEditingController advanceController = TextEditingController();
  TextEditingController balanceController = TextEditingController();
  TextEditingController maleController = TextEditingController();
  TextEditingController femaleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.arrow_back_outlined, size: 25),
                      Stack(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/Vector.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Name",
                  style: ts16mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  controller: nameController,
                  hintText: "Enter your full name",
                  width: MediaQuery.of(context).size.width * (350 / 375),
                  height: MediaQuery.of(context).size.height * (50 / 800),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Whatsapp number",
                  style: ts16mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  controller: whatsController,
                  hintText: "Enter your whatsapp number",
                  width: MediaQuery.of(context).size.width * (350 / 375),
                  height: MediaQuery.of(context).size.height * (50 / 800),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Address",
                  style: ts16mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  controller: addressController,
                  hintText: "Enter your address",
                  width: MediaQuery.of(context).size.width * (350 / 375),
                  height: MediaQuery.of(context).size.height * (50 / 800),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Location",
                  style: ts16mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  suffixIcon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xff006837),
                    size: 30,
                  ),
                  hintText: "Enter your Location",
                  width: MediaQuery.of(context).size.width * (350 / 375),
                  height: MediaQuery.of(context).size.height * (50 / 800),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Branch",
                  style: ts16mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  suffixIcon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xff006837),
                    size: 30,
                  ),
                  hintText: "Choose your branch",
                  width: MediaQuery.of(context).size.width * (350 / 375),
                  height: MediaQuery.of(context).size.height * (50 / 800),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Treatments",
                  style: ts14mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                            ),
                            child: Text(
                              "1.",
                              style: ts18cblack,
                            ),
                          ),
                          const SizedBox(
                              width:
                                  5), // Add spacing between the number and text
                          Expanded(
                            child: Text(
                              "Couple Combo Package is included",
                              style: ts18cblack,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                            ),
                          ),
                          const Icon(
                            Icons.cancel,
                            color: Color(0xffF24E1E),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Male',
                              style: ts16mcgreen,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          TextFormFieldWidget(
                            width:
                                MediaQuery.of(context).size.width * (50 / 375),
                            height:
                                MediaQuery.of(context).size.height * (25 / 800),
                            controller: maleController,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Female',
                              style: ts16mcgreen,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          TextFormFieldWidget(
                            width:
                                MediaQuery.of(context).size.width * (50 / 375),
                            height:
                                MediaQuery.of(context).size.height * (25 / 800),
                            controller: femaleController,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Align(
                              alignment: Alignment.bottomRight,
                              child: Icon(Icons.mode_edit_rounded,
                                  color: Color(0xff006837)))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                LoginButtonWidget(
                  press: () {
                    showCustomDialog(context);
                  },
                  title: "+ Add Treatments",
                  color: color0AA5A1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Total Amount",
                  style: ts14mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  controller: totalAmountController,
                  width: MediaQuery.of(context).size.width * (350 / 375),
                  height: MediaQuery.of(context).size.height * (50 / 800),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Discount Amount",
                  style: ts14mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  controller: discountController,
                  width: MediaQuery.of(context).size.width * (350 / 375),
                  height: MediaQuery.of(context).size.height * (50 / 800),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Payment option",
                  style: ts14mcBlack,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Consumer<PaymentProvider>(
                      builder: (context, payProvider, _) {
                        return Row(
                          children: [
                            Radio<String>(
                              value: 'Cash',
                              groupValue: payProvider.selectedPayment,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                payProvider.setPayment(value!);
                              },
                            ),
                            const Text('Cash'),
                          ],
                        );
                      },
                    ),
                    Consumer<PaymentProvider>(
                      builder: (context, payProvider, _) {
                        return Row(
                          children: [
                            Radio<String>(
                              value: 'Card',
                              groupValue: payProvider.selectedPayment,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                payProvider.setPayment(value!);
                              },
                            ),
                            const Text('Card'),
                          ],
                        );
                      },
                    ),
                    Consumer<PaymentProvider>(
                      builder: (context, payProvider, _) {
                        return Row(
                          children: [
                            Radio<String>(
                              value: 'UPI',
                              groupValue: payProvider.selectedPayment,
                              activeColor: Colors.green,
                              onChanged: (value) {
                                payProvider.setPayment(value!);
                              },
                            ),
                            const Text('UPI'),
                          ],
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Advance Amount",
                  style: ts14mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  controller: advanceController,
                  width: MediaQuery.of(context).size.width * (350 / 375),
                  height: MediaQuery.of(context).size.height * (50 / 800),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Balance Amount",
                  style: ts14mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  controller: balanceController,
                  width: MediaQuery.of(context).size.width * (350 / 375),
                  height: MediaQuery.of(context).size.height * (50 / 800),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Treatment Date",
                  style: ts14mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormFieldWidget(
                  suffixIcon: const Icon(
                    Icons.calendar_month,
                    color: Color(0xff006837),
                  ),
                  width: MediaQuery.of(context).size.width * (350 / 375),
                  height: MediaQuery.of(context).size.height * (50 / 800),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Treatment Time",
                  style: ts14mcBlack,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    TextFormFieldWidget(
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xff006837),
                        size: 30,
                      ),
                      width: MediaQuery.of(context).size.width * (155 / 375),
                      height: MediaQuery.of(context).size.height * (50 / 800),
                      hintText: 'Hour',
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextFormFieldWidget(
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xff006837),
                        size: 30,
                      ),
                      width: MediaQuery.of(context).size.width * (155 / 375),
                      height: MediaQuery.of(context).size.height * (50 / 800),
                      hintText: 'Minute',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                LoginButtonWidget(
                    press: () {
                      Navigator.pushNamed(context,ReceiptPrintScreen.route);
                    },
                    color: const Color(0xff006837),
                    title: 'Save'),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showCustomDialog(BuildContext context) {
    TextEditingController femaleCountController = TextEditingController();
    TextEditingController maleCountController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * (330 / 800),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Choose Treatment",
                    style: ts14mcBlack,
                  ),
                  TextFormFieldWidget(
                    hintText: 'choose prefered treatment',
                    width: MediaQuery.of(context).size.width * (250 / 375),
                    height: MediaQuery.of(context).size.height * (50 / 800),
                  ),
                  Text(
                    "Add Patients",
                    style: ts14mcBlack,
                  ),
                  Row(
                    children: [
                      TextFormFieldWidget(
                        controller: maleCountController,
                        width: MediaQuery.of(context).size.width * (125 / 375),
                        height: MediaQuery.of(context).size.height * (40 / 800),
                        hintText: 'Male',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * (50 / 800),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff006837),
                        ),
                        child: Consumer<CounterProvider>(
                            builder: (context, maleCount, _) {
                          return InkWell(
                            onTap: () {
                              maleCount.decrement();
                            },
                            child: const Icon(
                              Icons.remove,
                              color: colorF1F1F1,
                            ),
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Consumer<CounterProvider>(builder: (context, counter, _) {
                        return TextFormFieldWidget(
                          controller: TextEditingController(
                              text: counter.count.toString()),
                          width: MediaQuery.of(context).size.width * (50 / 375),
                          height:
                              MediaQuery.of(context).size.height * (40 / 800),
                        );
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          height:
                              MediaQuery.of(context).size.height * (50 / 800),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff006837),
                          ),
                          child: Consumer<CounterProvider>(
                              builder: (context, maleCounter, _) {
                            return InkWell(
                              onTap: () {
                                maleCounter.increment();
                              },
                              child: const Icon(
                                Icons.add,
                                color: colorF1F1F1,
                              ),
                            );
                          })),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      TextFormFieldWidget(
                        width: MediaQuery.of(context).size.width * (125 / 375),
                        height: MediaQuery.of(context).size.height * (40 / 800),
                        hintText: 'Female',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Consumer<CounterProvider>(
                        builder: (context,femaleCount,_) {
                          return InkWell(
                            onTap: (){
                              femaleCount.decrement();
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height * (40 / 800),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xff006837),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: colorF1F1F1,
                              ),
                            ),
                          );
                        }
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextFormFieldWidget(
                        width: MediaQuery.of(context).size.width * (50 / 375),
                        height: MediaQuery.of(context).size.height * (40 / 800),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * (50 / 800),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff006837),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: colorF1F1F1,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  LoginButtonWidget(
                      press: () {
                        Navigator.pop(context);
                      },
                      color: const Color(0xff006837),
                      title: 'Save')
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
