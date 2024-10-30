class BookingModel {
  final String name;
  final String package;
  final String date;
  final String personName;

  BookingModel({
    required this.name,
    required this.package,
    required this.date,
    required this.personName,
  });
}

List<BookingModel> bookings = [
  BookingModel(
    name: "Vikram Singh",
    package: "Couple Combo package (Rejuven satr)",
    date: "21/10/2023",
    personName: "Manesh",
  ),
  BookingModel(
    name: "Rinshad",
    package: "Couple Combo package (Rejuven satr)",
    date: "23/10/2023",
    personName: "ram",
  ),
  BookingModel(
    name: "Vikram",
    package: "Couple Combo package (Rejuven satr)",
    date: "25/10/2022",
    personName: "mohanalal",
  ),
  BookingModel(
    name: "manav",
    package: "Couple Combo package (Rejuven satr)",
    date: "24/10/2023",
    personName: "Abhi",
  ),
  BookingModel(
    name: "Kather",
    package: "Couple Combo package (Rejuven satr)",
    date: "25/10/2023",
    personName: "Messi",
  ),
  BookingModel(
    name: "Neymar",
    package: "Couple Combo package (Rejuven satr)",
    date: "27/10/2023",
    personName: "mbappe",
  ),
  // Add more bookings here
];
