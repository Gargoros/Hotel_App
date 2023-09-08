// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:hotel_app/src/features/booking/presentation/pages/booking_screen.dart'
    as _i1;
import 'package:hotel_app/src/features/hotel/presentation/pages/hotel_screen.dart'
    as _i2;
import 'package:hotel_app/src/features/paid/presentation/pages/paid_screen.dart'
    as _i3;
import 'package:hotel_app/src/features/room/presentation/pages/room_screen.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BookingRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BookingScreen(),
      );
    },
    HotelRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HotelScreen(),
      );
    },
    PaidRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PaidScreen(),
      );
    },
    RoomRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RoomScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BookingScreen]
class BookingRoute extends _i5.PageRouteInfo<void> {
  const BookingRoute({List<_i5.PageRouteInfo>? children})
      : super(
          BookingRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookingRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HotelScreen]
class HotelRoute extends _i5.PageRouteInfo<void> {
  const HotelRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HotelRoute.name,
          initialChildren: children,
        );

  static const String name = 'HotelRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PaidScreen]
class PaidRoute extends _i5.PageRouteInfo<void> {
  const PaidRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PaidRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaidRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RoomScreen]
class RoomRoute extends _i5.PageRouteInfo<void> {
  const RoomRoute({List<_i5.PageRouteInfo>? children})
      : super(
          RoomRoute.name,
          initialChildren: children,
        );

  static const String name = 'RoomRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
