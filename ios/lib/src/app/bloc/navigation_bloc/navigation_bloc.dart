import 'package:flk_adisyon/src/app/pages/home_page/home_view.dart';
import 'package:bloc/bloc.dart';
import 'package:flk_adisyon/core/enum/navigation_enum.dart';

abstract class NavigationStates{}


class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  final Function onMenuTap;

  NavigationBloc({this.onMenuTap});

  @override
  NavigationStates get initialState => MyCardsPage(
    onMenuTap: onMenuTap,
  );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DashboardClickedEvent:
        yield MyCardsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.MessagesClickedEvent:
        yield MessagesPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.UtilityClickedEvent:
        yield UtilityBillsPage(
          onMenuTap: onMenuTap,
        );
        break;
    }
  }
}