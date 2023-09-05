import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/core/widgets/app_table_row_spacer.dart';

class BookingDataCard extends StatelessWidget {
  const BookingDataCard({
    super.key,
    required this.departureFrom,
    required this.hotelLocation,
    required this.date1,
    required this.date2,
    required this.numberOfNights,
    required this.hotelName,
    required this.roomType,
    required this.foodType,
  });

  final String departureFrom;
  final String hotelLocation;
  final String date1;
  final String date2;
  final int numberOfNights;
  final String hotelName;
  final String roomType;
  final String foodType;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.all(16),
        child: Table(
          columnWidths: const {
            0: FlexColumnWidth(4),
            1: FlexColumnWidth(6),
          },
          children: [
            TableRow(
              children: [
                Text(
                  AppTextConst.departureFrom,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  departureFrom,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: const Color(0xFF000000)),
                ),
              ],
            ),
            rowSpacer,
            TableRow(
              children: [
                Text(
                  AppTextConst.hotelLocation,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  hotelLocation,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: const Color(0xFF000000)),
                ),
              ],
            ),
            rowSpacer,
            TableRow(
              children: [
                Text(
                  AppTextConst.date,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  "$date1 - $date2",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: const Color(0xFF000000)),
                ),
              ],
            ),
            rowSpacer,
            TableRow(
              children: [
                Text(
                  AppTextConst.numberOfNights,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  numberOfNights.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: const Color(0xFF000000)),
                ),
              ],
            ),
            rowSpacer,
            TableRow(
              children: [
                Text(
                  AppTextConst.hotelName,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  hotelName,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: const Color(0xFF000000)),
                ),
              ],
            ),
            rowSpacer,
            TableRow(
              children: [
                Text(
                  AppTextConst.roomType,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  roomType,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: const Color(0xFF000000)),
                ),
              ],
            ),
            rowSpacer,
            TableRow(
              children: [
                Text(
                  AppTextConst.foodType,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  foodType,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: const Color(0xFF000000)),
                ),
              ],
            ),
          ],
        ));
  }
}
