import 'package:flutter/material.dart';
import 'package:novinduscalicutinterview/screens/home/widgets/patient_list_widget.dart';
import 'package:novinduscalicutinterview/screens/register/register_screen.dart';
import 'package:provider/provider.dart';
import 'package:novinduscalicutinterview/utils/styles.dart';
import 'package:novinduscalicutinterview/widgets/text_form_field.dart';
import '../../providers/date_pick_controller.dart';
import '../../utils/colors.dart';
import '../../widgets/bottom_bar_widget.dart';
import '../../widgets/date_picker_controller.dart';
import '../../widgets/login_button_widget.dart';
import '../../widgets/search_button.dart';

class HomeScreen extends StatelessWidget {
  static const route = "homeScreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              const SizedBox(height: 25),
              const BottomAppBarWidget(),
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
                      child: Consumer<DatePickControllerProvider>(
                          builder: (context, datePick, _) {
                        return DatePickerWidget(
                          datePickController: datePick.datePickController,
                        );
                      }),
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.grey),
              const PatientList(),
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
