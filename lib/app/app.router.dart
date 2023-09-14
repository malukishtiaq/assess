// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:assess/ui/common/all_enums.dart' as _i10;
import 'package:assess/ui/views/home/home_view.dart' as _i2;
import 'package:assess/ui/views/login/login_view.dart' as _i4;
import 'package:assess/ui/views/market/market_view.dart' as _i8;
import 'package:assess/ui/views/register/register_view.dart' as _i5;
import 'package:assess/ui/views/social_login/social_login_view.dart' as _i6;
import 'package:assess/ui/views/social_registration/social_registration_view.dart'
    as _i7;
import 'package:assess/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i9;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i11;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const loginView = '/login-view';

  static const registerView = '/register-view';

  static const socialLoginView = '/social-login-view';

  static const socialRegistrationView = '/social-registration-view';

  static const marketView = '/market-view';

  static const all = <String>{
    homeView,
    startupView,
    loginView,
    registerView,
    socialLoginView,
    socialRegistrationView,
    marketView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.registerView,
      page: _i5.RegisterView,
    ),
    _i1.RouteDef(
      Routes.socialLoginView,
      page: _i6.SocialLoginView,
    ),
    _i1.RouteDef(
      Routes.socialRegistrationView,
      page: _i7.SocialRegistrationView,
    ),
    _i1.RouteDef(
      Routes.marketView,
      page: _i8.MarketView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.RegisterView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.RegisterView(),
        settings: data,
      );
    },
    _i6.SocialLoginView: (data) {
      final args = data.getArgs<SocialLoginViewArguments>(nullOk: false);
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i6.SocialLoginView(key: args.key, types: args.types),
        settings: data,
      );
    },
    _i7.SocialRegistrationView: (data) {
      final args = data.getArgs<SocialRegistrationViewArguments>(nullOk: false);
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i7.SocialRegistrationView(key: args.key, types: args.types),
        settings: data,
      );
    },
    _i8.MarketView: (data) {
      return _i9.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.MarketView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class SocialLoginViewArguments {
  const SocialLoginViewArguments({
    this.key,
    required this.types,
  });

  final _i9.Key? key;

  final _i10.SocialMediaTypes types;

  @override
  String toString() {
    return '{"key": "$key", "types": "$types"}';
  }

  @override
  bool operator ==(covariant SocialLoginViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.types == types;
  }

  @override
  int get hashCode {
    return key.hashCode ^ types.hashCode;
  }
}

class SocialRegistrationViewArguments {
  const SocialRegistrationViewArguments({
    this.key,
    required this.types,
  });

  final _i9.Key? key;

  final _i10.SocialMediaTypes types;

  @override
  String toString() {
    return '{"key": "$key", "types": "$types"}';
  }

  @override
  bool operator ==(covariant SocialRegistrationViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.types == types;
  }

  @override
  int get hashCode {
    return key.hashCode ^ types.hashCode;
  }
}

extension NavigatorStateExtension on _i11.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSocialLoginView({
    _i9.Key? key,
    required _i10.SocialMediaTypes types,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.socialLoginView,
        arguments: SocialLoginViewArguments(key: key, types: types),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSocialRegistrationView({
    _i9.Key? key,
    required _i10.SocialMediaTypes types,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.socialRegistrationView,
        arguments: SocialRegistrationViewArguments(key: key, types: types),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToMarketView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.marketView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSocialLoginView({
    _i9.Key? key,
    required _i10.SocialMediaTypes types,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.socialLoginView,
        arguments: SocialLoginViewArguments(key: key, types: types),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSocialRegistrationView({
    _i9.Key? key,
    required _i10.SocialMediaTypes types,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.socialRegistrationView,
        arguments: SocialRegistrationViewArguments(key: key, types: types),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithMarketView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.marketView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
