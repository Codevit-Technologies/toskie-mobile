enum AppRoute { onboarding, login, register, home }

extension AppRouteExt on AppRoute {
  String get getPath {
    switch (this) {
      case AppRoute.onboarding:
        return '/';
      case AppRoute.login:
        return '/login';
      case AppRoute.register:
        return '/register';
      case AppRoute.home:
        return '/home';
    }
  }

  String get getName {
    switch (this) {
      case AppRoute.onboarding:
        return 'onboarding';
      case AppRoute.login:
        return 'login';
      case AppRoute.register:
        return 'register';
      case AppRoute.home:
        return 'home';
    }
  }
}
