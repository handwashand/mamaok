import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/backend/backend.dart';

import '../../auth/base_auth_user_provider.dart';
import '../../backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? FirstWidget() : OutBordWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? FirstWidget() : OutBordWidget(),
          routes: [
            FFRoute(
              name: 'Reg',
              path: 'reg',
              builder: (context, params) => RegWidget(),
            ),
            FFRoute(
              name: 'HomePage',
              path: 'homePage',
              builder: (context, params) => HomePageWidget(),
            ),
            FFRoute(
              name: 'OutBord',
              path: 'outBord',
              builder: (context, params) => OutBordWidget(),
            ),
            FFRoute(
              name: 'Companions',
              path: 'companions',
              builder: (context, params) => CompanionsWidget(),
            ),
            FFRoute(
              name: 'OutBord1',
              path: 'outBord1',
              builder: (context, params) => OutBord1Widget(),
            ),
            FFRoute(
              name: 'Push',
              path: 'push',
              asyncParams: {
                'pushzero': getDocList(['Push'], PushRecord.fromSnapshot),
              },
              builder: (context, params) => PushWidget(
                pushzero: params.getParam<PushRecord>(
                    'pushzero', ParamType.Document, true),
              ),
            ),
            FFRoute(
              name: 'Filtr',
              path: 'filtr',
              builder: (context, params) => FiltrWidget(),
            ),
            FFRoute(
              name: 'CompanionView',
              path: 'companionView',
              asyncParams: {
                'compan': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => CompanionViewWidget(
                compan: params.getParam('compan', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CompanionVideo',
              path: 'companionVideo',
              asyncParams: {
                'compa': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => CompanionVideoWidget(
                compa: params.getParam('compa', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CompanionFeedBack',
              path: 'companionFeedBack',
              asyncParams: {
                'compan': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => CompanionFeedBackWidget(
                compan: params.getParam('compan', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'FindCompStart',
              path: 'findCompStart',
              builder: (context, params) => FindCompStartWidget(),
            ),
            FFRoute(
              name: 'Test2',
              path: 'test2',
              builder: (context, params) => Test2Widget(),
            ),
            FFRoute(
              name: 'Pricing',
              path: 'pricing',
              builder: (context, params) => PricingWidget(),
            ),
            FFRoute(
              name: 'CustomerCabinet',
              path: 'customerCabinet',
              builder: (context, params) => CustomerCabinetWidget(),
            ),
            FFRoute(
              name: 'CustCabinetChange',
              path: 'custCabinetChange',
              builder: (context, params) => CustCabinetChangeWidget(),
            ),
            FFRoute(
              name: 'Balance',
              path: 'balance',
              builder: (context, params) => BalanceWidget(),
            ),
            FFRoute(
              name: 'Balance2',
              path: 'balance2',
              builder: (context, params) => Balance2Widget(),
            ),
            FFRoute(
              name: 'SMS',
              path: 'sms',
              builder: (context, params) => SmsWidget(),
            ),
            FFRoute(
              name: 'RegAvto',
              path: 'regAvto',
              builder: (context, params) => RegAvtoWidget(),
            ),
            FFRoute(
              name: 'LogAvto',
              path: 'logAvto',
              builder: (context, params) => LogAvtoWidget(),
            ),
            FFRoute(
              name: 'RegRole',
              path: 'regRole',
              builder: (context, params) => RegRoleWidget(),
            ),
            FFRoute(
              name: 'RegInfo',
              path: 'regInfo',
              builder: (context, params) => RegInfoWidget(),
            ),
            FFRoute(
              name: 'PoliticConf',
              path: 'politicConf',
              builder: (context, params) => PoliticConfWidget(),
            ),
            FFRoute(
              name: 'PolzSogl',
              path: 'polzSogl',
              builder: (context, params) => PolzSoglWidget(),
            ),
            FFRoute(
              name: 'OffertaComp',
              path: 'offertaComp',
              builder: (context, params) => OffertaCompWidget(),
            ),
            FFRoute(
              name: 'OffertaWard',
              path: 'offertaWard',
              builder: (context, params) => OffertaWardWidget(),
            ),
            FFRoute(
              name: 'CusMeetingHistory',
              path: 'cusMeetingHistory',
              builder: (context, params) => CusMeetingHistoryWidget(),
            ),
            FFRoute(
              name: 'MakeWard',
              path: 'makeWard',
              builder: (context, params) => MakeWardWidget(),
            ),
            FFRoute(
              name: 'MakeWard2',
              path: 'makeWard2',
              builder: (context, params) => MakeWard2Widget(),
            ),
            FFRoute(
              name: 'Chat',
              path: 'chat',
              asyncParams: {
                'chatUser': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => ChatWidget(
                chatUser: params.getParam('chatUser', ParamType.Document),
                chatRef: params.getParam(
                    'chatRef', ParamType.DocumentReference, false, ['chats']),
              ),
            ),
            FFRoute(
              name: 'AdminChats',
              path: 'adminChats',
              builder: (context, params) => AdminChatsWidget(),
            ),
            FFRoute(
              name: 'AdminChat1',
              path: 'adminChat1',
              builder: (context, params) => AdminChat1Widget(),
            ),
            FFRoute(
              name: 'Test3',
              path: 'test3',
              builder: (context, params) => Test3Widget(),
            ),
            FFRoute(
              name: 'Test4',
              path: 'test4',
              builder: (context, params) => Test4Widget(),
            ),
            FFRoute(
              name: 'Test1',
              path: 'test1',
              builder: (context, params) => Test1Widget(),
            ),
            FFRoute(
              name: 'Test5',
              path: 'test5',
              builder: (context, params) => Test5Widget(),
            ),
            FFRoute(
              name: 'FindCompNo',
              path: 'findCompNo',
              builder: (context, params) => FindCompNoWidget(),
            ),
            FFRoute(
              name: 'Test6',
              path: 'test6',
              builder: (context, params) => Test6Widget(),
            ),
            FFRoute(
              name: 'Test7',
              path: 'test7',
              builder: (context, params) => Test7Widget(),
            ),
            FFRoute(
              name: 'Test8',
              path: 'test8',
              builder: (context, params) => Test8Widget(),
            ),
            FFRoute(
              name: 'Test9',
              path: 'test9',
              builder: (context, params) => Test9Widget(),
            ),
            FFRoute(
              name: 'HomeCompanion',
              path: 'homeCompanion',
              builder: (context, params) => HomeCompanionWidget(),
            ),
            FFRoute(
              name: 'CompanionCabinet',
              path: 'companionCabinet',
              builder: (context, params) => CompanionCabinetWidget(),
            ),
            FFRoute(
              name: 'CalendComp',
              path: 'calendComp',
              builder: (context, params) => CalendCompWidget(),
            ),
            FFRoute(
              name: 'MapCustomer',
              path: 'mapCustomer',
              builder: (context, params) => MapCustomerWidget(),
            ),
            FFRoute(
              name: 'whishMeeting',
              path: 'whishMeeting',
              builder: (context, params) => WhishMeetingWidget(),
            ),
            FFRoute(
              name: 'ZayavkaEnd',
              path: 'zayavkaEnd',
              builder: (context, params) => ZayavkaEndWidget(),
            ),
            FFRoute(
              name: 'CompDetailMeet',
              path: 'compDetailMeet',
              asyncParams: {
                'meeting': getDoc(['Meetings'], MeetingsRecord.fromSnapshot),
              },
              builder: (context, params) => CompDetailMeetWidget(
                meeting: params.getParam('meeting', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'compChangeInfo',
              path: 'compChangeInfo',
              builder: (context, params) => CompChangeInfoWidget(),
            ),
            FFRoute(
              name: 'CompDetailMeet1',
              path: 'compDetailMeet1',
              asyncParams: {
                'meeting': getDoc(['Meetings'], MeetingsRecord.fromSnapshot),
              },
              builder: (context, params) => CompDetailMeet1Widget(
                meeting: params.getParam('meeting', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'First',
              path: 'first',
              builder: (context, params) => FirstWidget(),
            ),
            FFRoute(
              name: 'CompMeetReport',
              path: 'compMeetReport',
              asyncParams: {
                'meeting': getDoc(['Meetings'], MeetingsRecord.fromSnapshot),
              },
              builder: (context, params) => CompMeetReportWidget(
                meeting: params.getParam('meeting', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CustomerMeeting',
              path: 'customerMeeting',
              asyncParams: {
                'meeting': getDoc(['Meetings'], MeetingsRecord.fromSnapshot),
              },
              builder: (context, params) => CustomerMeetingWidget(
                meeting: params.getParam('meeting', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CustomerMeetingReport',
              path: 'customerMeetingReport',
              asyncParams: {
                'meeting': getDoc(['Meetings'], MeetingsRecord.fromSnapshot),
              },
              builder: (context, params) => CustomerMeetingReportWidget(
                meeting: params.getParam('meeting', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CalendCustomer',
              path: 'calendCustomer',
              builder: (context, params) => CalendCustomerWidget(),
            ),
            FFRoute(
              name: 'About',
              path: 'about',
              builder: (context, params) => AboutWidget(),
            ),
            FFRoute(
              name: 'AdminHome',
              path: 'adminHome',
              builder: (context, params) => AdminHomeWidget(),
            ),
            FFRoute(
              name: 'AdminMeeting',
              path: 'adminMeeting',
              builder: (context, params) => AdminMeetingWidget(),
            ),
            FFRoute(
              name: 'AdminWard',
              path: 'adminWard',
              asyncParams: {
                'customer': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AdminWardWidget(
                customer: params.getParam('customer', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AdressList',
              path: 'adressList',
              builder: (context, params) => AdressListWidget(),
            ),
            FFRoute(
              name: 'Test7Customer',
              path: 'test7Customer',
              builder: (context, params) => Test7CustomerWidget(),
            ),
            FFRoute(
              name: 'Payview',
              path: 'payview',
              builder: (context, params) => PayviewWidget(
                vozv: params.getParam('vozv', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'CompMeetingHistory',
              path: 'compMeetingHistory',
              builder: (context, params) => CompMeetingHistoryWidget(),
            ),
            FFRoute(
              name: 'Favorite',
              path: 'favorite',
              builder: (context, params) => FavoriteWidget(),
            ),
            FFRoute(
              name: 'HomeWard',
              path: 'homeWard',
              builder: (context, params) => HomeWardWidget(),
            ),
            FFRoute(
              name: 'CalendWard',
              path: 'calendWard',
              builder: (context, params) => CalendWardWidget(),
            ),
            FFRoute(
              name: 'WardDetailMeet',
              path: 'wardDetailMeet',
              asyncParams: {
                'meeting': getDoc(['Meetings'], MeetingsRecord.fromSnapshot),
              },
              builder: (context, params) => WardDetailMeetWidget(
                meeting: params.getParam('meeting', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'WardCabinet',
              path: 'wardCabinet',
              builder: (context, params) => WardCabinetWidget(),
            ),
            FFRoute(
              name: 'PayOK',
              path: 'payOK',
              builder: (context, params) => PayOKWidget(),
            ),
            FFRoute(
              name: 'AdressList2',
              path: 'adressList2',
              builder: (context, params) => AdressList2Widget(),
            ),
            FFRoute(
              name: 'MapCustomer2',
              path: 'mapCustomer2',
              builder: (context, params) => MapCustomer2Widget(),
            ),
            FFRoute(
              name: 'BalanceCompan',
              path: 'balanceCompan',
              builder: (context, params) => BalanceCompanWidget(),
            ),
            FFRoute(
              name: 'AdminCompanion',
              path: 'adminCompanion',
              asyncParams: {
                'customer': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AdminCompanionWidget(
                customer: params.getParam('customer', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AdminAdressList',
              path: 'AdminAdressList',
              asyncParams: {
                'customer': getDoc(['users'], UsersRecord.fromSnapshot),
                'companion': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AdminAdressListWidget(
                customer: params.getParam('customer', ParamType.Document),
                companion: params.getParam('companion', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AdmibwhishMeeting',
              path: 'whishMeetingAdmin',
              asyncParams: {
                'customer': getDoc(['users'], UsersRecord.fromSnapshot),
                'companion': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AdmibwhishMeetingWidget(
                customer: params.getParam('customer', ParamType.Document),
                companion: params.getParam('companion', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AdminZayavkaEnd',
              path: 'adminZayavkaEnd',
              asyncParams: {
                'companion': getDoc(['users'], UsersRecord.fromSnapshot),
                'customer': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AdminZayavkaEndWidget(
                companion: params.getParam('companion', ParamType.Document),
                customer: params.getParam('customer', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AdminTafifsCustomer',
              path: 'adminTafifsCustomer',
              asyncParams: {
                'customer': getDoc(['users'], UsersRecord.fromSnapshot),
                'companion': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AdminTafifsCustomerWidget(
                customer: params.getParam('customer', ParamType.Document),
                companion: params.getParam('companion', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AdminTimeMeet',
              path: 'adminTimeMeet',
              asyncParams: {
                'companion': getDoc(['users'], UsersRecord.fromSnapshot),
                'customer': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AdminTimeMeetWidget(
                companion: params.getParam('companion', ParamType.Document),
                customer: params.getParam('customer', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AdminTarifs',
              path: 'AdminTarifs',
              asyncParams: {
                'customer': getDoc(['users'], UsersRecord.fromSnapshot),
                'companion': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AdminTarifsWidget(
                customer: params.getParam('customer', ParamType.Document),
                companion: params.getParam('companion', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AdminMeetPlan',
              path: 'adminMeetPlan',
              asyncParams: {
                'customer': getDoc(['users'], UsersRecord.fromSnapshot),
                'companion': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AdminMeetPlanWidget(
                customer: params.getParam('customer', ParamType.Document),
                companion: params.getParam('companion', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'AdminMap',
              path: 'adminMap',
              asyncParams: {
                'customer': getDoc(['users'], UsersRecord.fromSnapshot),
                'companion': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => AdminMapWidget(
                customer: params.getParam('customer', ParamType.Document),
                companion: params.getParam('companion', ParamType.Document),
              ),
            ),
            FFRoute(
              name: 'CompanionViewCopy',
              path: 'companionViewCopy',
              asyncParams: {
                'compan': getDoc(['users'], UsersRecord.fromSnapshot),
              },
              builder: (context, params) => CompanionViewCopyWidget(
                compan: params.getParam('compan', ParamType.Document),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/outBord';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Profile_Settings.png',
                    fit: BoxFit.cover,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
