import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/src/config/router/app_router.gr.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/core/widgets/app_bottom_button_container.dart';
import 'package:hotel_app/src/features/paid/presentation/widgets/order_accepted_widget.dart';
import 'package:hotel_app/src/features/paid/presentation/widgets/order_paid_widget.dart';
import 'package:hotel_app/src/features/paid/presentation/widgets/party_popper_image_widget.dart';

@RoutePage()
class PaidScreen extends StatefulWidget {
  const PaidScreen({super.key});

  @override
  State<PaidScreen> createState() => _PaidScreenState();
}

class _PaidScreenState extends State<PaidScreen> {
  final int orderNumber = 134243;

  final String appBarText = AppTextConst.orderIsPaid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBuilder(context),
      body: _bodyBuilder(),
    );
  }

  AppBar _appBuilder(BuildContext context) {
    return AppBar(
      title: Text(
        appBarText,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  Container _bodyBuilder() {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const PartyPopperImageWidget(),
          const OrderPaidWidget(),
          OrderAcceptedWidget(orderNumber: orderNumber),
          const Spacer(),
          CustonBottomButtonContainer(
            buttonText: AppTextConst.paidButton,
            navigatTo: () => context.router.replace(const HotelRoute()),
          )
        ],
      ),
    );
  }
}
