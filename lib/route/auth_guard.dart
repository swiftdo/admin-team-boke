import 'package:admin_team_boke/route/route.gr.dart';
import 'package:admin_team_boke/services/sp_service.dart';
import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  final SpService? sp;

  AuthGuard({this.sp});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool authenitcated = sp?.hasLogin == true;

    if (authenitcated) {
      resolver.next(true);
    } else {
      router.push(LoginRoute(onResult: (success) {
        resolver.next(success);
      }));
    }
  }
}
