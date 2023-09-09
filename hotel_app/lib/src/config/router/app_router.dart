import 'package:auto_route/auto_route.dart';
import 'package:hotel_app/src/config/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        // add your routes here
        CustomRoute(
          page: HotelRoute.page,
          initial: true,
          transitionsBuilder: TransitionsBuilders.slideRight,
        ),
        CustomRoute(
          page: BookingRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
        ),
        CustomRoute(
          page: PaidRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
        ),
        CustomRoute(
          page: RoomRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRight,
        ),
      ];
}
