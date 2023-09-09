// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
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
      final args = routeData.argsAs<HotelRouteArgs>(
          orElse: () => const HotelRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HotelScreen(key: args.key),
      );
    },
    PaidRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PaidScreen(),
      );
    },
    RoomRoute.name: (routeData) {
      final args =
          routeData.argsAs<RoomRouteArgs>(orElse: () => const RoomRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.RoomScreen(key: args.key),
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
class HotelRoute extends _i5.PageRouteInfo<HotelRouteArgs> {
  HotelRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          HotelRoute.name,
          args: HotelRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HotelRoute';

  static const _i5.PageInfo<HotelRouteArgs> page =
      _i5.PageInfo<HotelRouteArgs>(name);
}

class HotelRouteArgs {
  const HotelRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'HotelRouteArgs{key: $key}';
  }
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
class RoomRoute extends _i5.PageRouteInfo<RoomRouteArgs> {
  RoomRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          RoomRoute.name,
          args: RoomRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'RoomRoute';

  static const _i5.PageInfo<RoomRouteArgs> page =
      _i5.PageInfo<RoomRouteArgs>(name);
}

class RoomRouteArgs {
  const RoomRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'RoomRouteArgs{key: $key}';
  }
}
