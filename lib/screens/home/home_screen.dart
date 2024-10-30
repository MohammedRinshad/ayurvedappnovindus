import 'package:flutter/material.dart';
import 'package:novinduscalicutinterview/screens/register/register_screen.dart';
import 'package:provider/provider.dart';
import 'package:novinduscalicutinterview/utils/styles.dart';
import 'package:novinduscalicutinterview/widgets/text_form_field.dart';
import '../../providers/date_pick_controller.dart';
import '../../utils/colors.dart';
import '../../widgets/date_picker_controller.dart';
import '../../widgets/login_button_widget.dart';
import '../../widgets/search_button.dart';
import "package:novinduscalicutinterview/screens/home/model/booking_class_model.dart";

class HomeScreen extends StatelessWidget {
  static const route = "homescreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final datePickControllerProvider =
        Provider.of<DatePickControllerProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormFieldWidget(
                        hintText: 'Search for treatments',
                        prefixIcon:
                            const Icon(Icons.search, color: colorACACAC),
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * (45 / 800),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const SearchButtonWidget(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sort by:", style: ts16mcBlack),
                    const SizedBox(width: 10),
                    Flexible(
                      child: DatePickerWidget(
                        datePickController:
                            datePickControllerProvider.datePickController,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.grey),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
                  itemCount: bookings.length,
                  itemBuilder: (context, index) {
                    final booking = bookings[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 5),
                      child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width * (340 / 375),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                "${index + 1}. ${booking.name}",
                                style: ts20mcBlack,
                              ),
                              Text(
                                booking.package,
                                style: ts18mcgreen,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                softWrap: false,
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.shopping_bag_outlined,
                                      color: Color(0xffF24E1E)),
                                  const SizedBox(width: 10),
                                  Text(
                                    booking.date,
                                    style: ts18mcgrey,
                                  ),
                                  const SizedBox(width: 20),
                                  const Icon(Icons.person_sharp,
                                      color: Color(0xffF24E1E)),
                                  const SizedBox(width: 10),
                                  Text(
                                    booking.personName,
                                    style: ts18mcgrey,
                                  ),
                                ],
                              ),
                              const Divider(color: Colors.black, thickness: 1),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("View Booking Details",
                                      style: ts16mcBlack),
                                  const Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xff006837),
                                    size: 30,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              LoginButtonWidget(
                color: const Color(0xff006837),
                press: () {
                  Navigator.pushNamed(context, RegisterScreen.route);
                },
                title: 'Register Now',
              ),
              const SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
