import 'package:flutter/material.dart';
import 'package:novinduscalicutinterview/screens/register/provider/form_provider.dart';
import 'package:novinduscalicutinterview/screens/register/widget/payment_radio.dart';
import 'package:novinduscalicutinterview/utils/colors.dart';
import 'package:novinduscalicutinterview/utils/styles.dart';
import 'package:novinduscalicutinterview/widgets/login_button_widget.dart';
import 'package:novinduscalicutinterview/widgets/text_form_field.dart';
import 'package:provider/provider.dart';
import '../../providers/location_provider.dart';
import '../../providers/treatment_count_provider.dart';
import '../../widgets/bottom_bar_widget.dart';
import '../../widgets/drop_down_widget.dart';
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
    final branchOptions = ['Branch A', 'Branch B', 'Branch C'];
    final locationOptions = ['New York', 'Los Angeles', 'Chicago'];
    final hourOptions = ['1 hour', '2 hour', '3 hour'];
    final minuteOptions = ['1 Minute', '2 Minute', '3 Minute'];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                const BottomAppBarWidget(),
                const SizedBox(
                  height: 20,
                ),
                Text("Name", style: ts16mcBlack),
                const SizedBox(height: 5),
                Consumer<FormProvider>(builder: (context, name, _) {
                  return TextFormFieldWidget(
                    width: MediaQuery.of(context).size.width * (350 / 375),
                    height: MediaQuery.of(context).size.height * (50 / 800),
                    controller: name.nameController,
                    onChanged: name.updateName,
                    hintText: "Enter your full name",
                  );
                }),
                const SizedBox(height: 10),
                Text("Whatsapp number", style: ts16mcBlack),
                const SizedBox(height: 5),
                Consumer<FormProvider>(builder: (context, whatsapp, _) {
                  return TextFormFieldWidget(
                    width: MediaQuery.of(context).size.width * (350 / 375),
                    height: MediaQuery.of(context).size.height * (50 / 800),
                    controller: whatsapp.whatsController,
                    onChanged: whatsapp.updateWhatsApp,
                    hintText: "Enter your Whatsapp number ",
                  );
                }),
                const SizedBox(height: 10),
                Text("Address", style: ts16mcBlack),
                const SizedBox(height: 5),
                Consumer<FormProvider>(builder: (context, address, _) {
                  return TextFormFieldWidget(
                    width: MediaQuery.of(context).size.width * (350 / 375),
                    height: MediaQuery.of(context).size.height * (50 / 800),
                    controller: address.addressController,
                    onChanged: address.updateAddress,
                    hintText: "Enter your address",
                  );
                }),
                const SizedBox(height: 10),
                Text("Location", style: ts16mcBlack),
                const SizedBox(height: 5),
                Consumer<DropdownProvider>(builder: (context, locationProv, _) {
                  return CustomDropdownWidget(
                    hintText: 'Enter your location',
                    items: locationOptions,
                    selectedValue: locationProv.selectedLocation,
                    onChanged: (newValue) {
                      if (newValue != null) {
                        locationProv.setLocation(newValue);
                      }
                    },
                  );
                }),
                const SizedBox(height: 10),
                Text("Branch", style: ts16mcBlack),
                const SizedBox(height: 5),
                Consumer<DropdownProvider>(builder: (context, branch, _) {
                  return CustomDropdownWidget(
                    hintText: 'Enter your Branch',
                    items: branchOptions,
                    selectedValue: branch.selectedBranch,
                    onChanged: (newValue) {
                      if (newValue != null) {
                        branch.setBranch(newValue);
                      }
                    },
                  );
                }),
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
                            keyboardType: TextInputType.number,
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
                            keyboardType: TextInputType.number,
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
                const PaymentRadioButton(),
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
                    Consumer<DropdownProvider>(builder: (context, hour, _) {
                      return CustomDropdownWidget(
                        width: MediaQuery.of(context).size.width * (160 / 375),
                        height: MediaQuery.of(context).size.height * (60 / 800),
                        hintText: 'Hour',
                        items: hourOptions,
                        selectedValue: hour.selectedHour,
                        onChanged: (newValue) {
                          if (newValue != null) {
                            hour.setHour(newValue);
                          }
                        },
                      );
                    }),
                    const SizedBox(
                      width: 20,
                    ),
                    Consumer<DropdownProvider>(builder: (context, minute, _) {
                      return CustomDropdownWidget(
                        width: MediaQuery.of(context).size.width * (160 / 375),
                        height: MediaQuery.of(context).size.height * (60 / 800),
                        hintText: 'Minute',
                        items: minuteOptions,
                        selectedValue: minute.selectedMinute,
                        onChanged: (newValue) {
                          if (newValue != null) {
                            minute.setMinute(newValue);
                          }
                        },
                      );
                    }),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                LoginButtonWidget(
                    press: () {
                      Navigator.pushNamed(context, ReceiptPrintScreen.route);
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
                              maleCount.decrementMale();
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
                              text: counter.maleCount.toString()),
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
                                maleCounter.incrementMale();
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
                        controller: femaleCountController,
                        width: MediaQuery.of(context).size.width * (125 / 375),
                        height: MediaQuery.of(context).size.height * (40 / 800),
                        hintText: 'Female',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Consumer<CounterProvider>(
                          builder: (context, femaleCount, _) {
                        return InkWell(
                          onTap: () {
                            femaleCount.decrementFemale();
                          },
                          child: Container(
                            height:
                                MediaQuery.of(context).size.height * (40 / 800),
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
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      Consumer<CounterProvider>(
                          builder: (context, femaleCount, _) {
                        return TextFormFieldWidget(
                          controller: TextEditingController(
                            text: femaleCount.femaleCount.toString(),
                          ),
                          width: MediaQuery.of(context).size.width * (50 / 375),
                          height:
                              MediaQuery.of(context).size.height * (40 / 800),
                        );
                      }),
                      const SizedBox(
                        width: 10,
                      ),
                      Consumer<CounterProvider>(
                          builder: (context, countAdd, _) {
                        return InkWell(
                          onTap: () {
                            countAdd.incrementFemale();
                          },
                          child: Container(
                            height:
                                MediaQuery.of(context).size.height * (50 / 800),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff006837),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: colorF1F1F1,
                            ),
                          ),
                        );
                      })
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
