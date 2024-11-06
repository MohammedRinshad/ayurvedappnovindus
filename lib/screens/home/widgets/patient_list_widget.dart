import 'package:flutter/material.dart';

import '../../../utils/styles.dart';
import '../model/booking_class_model.dart';

class PatientList extends StatelessWidget {
  const PatientList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
        itemCount: bookings.length,
        itemBuilder: (context, index) {
          final booking = bookings[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width * (340 / 375),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("View Booking Details", style: ts16mcBlack),
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
    );
  }
}
