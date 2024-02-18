import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

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
          appStateNotifier.loggedIn ? NavBarPage() : OnboardingWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : OnboardingWidget(),
        ),
        FFRoute(
          name: 'loginPage',
          path: '/loginPage',
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: 'completeProfile',
          path: '/completeProfile',
          builder: (context, params) => CompleteProfileWidget(),
        ),
        FFRoute(
          name: 'forgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'addAnotherProfile',
          path: '/addAnotherProfile',
          builder: (context, params) => AddAnotherProfileWidget(),
        ),
        FFRoute(
          name: 'onboarding',
          path: '/onboarding',
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: 'homePage',
          path: '/homePage',
          asyncParams: {
            'test': getDoc(['asdfasdf'], AsdfasdfRecord.fromSnapshot),
          },
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'homePage')
              : HomePageWidget(
                  test: params.getParam('test', ParamType.Document),
                  ageYrs: params.getParam('ageYrs', ParamType.int),
                  ageMnths: params.getParam('ageMnths', ParamType.int),
                ),
        ),
        FFRoute(
          name: 'myAppointments',
          path: '/myAppointments',
          builder: (context, params) => MyAppointmentsWidget(),
        ),
        FFRoute(
          name: 'appointmentDetails',
          path: '/appointmentDetails',
          builder: (context, params) => AppointmentDetailsWidget(
            appointmentDetails: params.getParam('appointmentDetails',
                ParamType.DocumentReference, false, ['appointments']),
            treedetails: params.getParam(
                'treedetails',
                ParamType.DocumentReference,
                false,
                ['fielddetails', 'mytrees']),
          ),
        ),
        FFRoute(
          name: 'profilePage',
          path: '/profilePage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'profilePage')
              : ProfilePageWidget(
                  userProfile: params.getParam('userProfile',
                      ParamType.DocumentReference, false, ['users']),
                ),
        ),
        FFRoute(
          name: 'editProfile',
          path: '/editProfile',
          builder: (context, params) => EditProfileWidget(
            userProfile: params.getParam(
                'userProfile', ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'findSymptoms',
          path: '/findSymptoms',
          builder: (context, params) => FindSymptomsWidget(),
        ),
        FFRoute(
          name: 'appointmentDetailsProfile',
          path: '/appointmentDetailsProfile',
          builder: (context, params) => AppointmentDetailsProfileWidget(
            appointmentDetails: params.getParam('appointmentDetails',
                ParamType.DocumentReference, false, ['appointments']),
          ),
        ),
        FFRoute(
          name: 'allusers',
          path: '/allusers',
          builder: (context, params) => AllusersWidget(),
        ),
        FFRoute(
          name: 'activeusers',
          path: '/activeusers',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'activeusers')
              : ActiveusersWidget(
                  search: params.getParam('search', ParamType.String),
                ),
        ),
        FFRoute(
          name: 'chitchat',
          path: '/chitchat',
          asyncParams: {
            'hosp': getDoc(['hospitals'], HospitalsRecord.fromSnapshot),
          },
          builder: (context, params) => ChitchatWidget(
            userName: params.getParam('userName', ParamType.String),
            userEmail: params.getParam('userEmail', ParamType.String),
            chatUser: params.getParam(
                'chatUser', ParamType.DocumentReference, false, ['chats']),
            userRef: params.getParam(
                'userRef', ParamType.DocumentReference, false, ['users']),
            userProfile: params.getParam('userProfile', ParamType.String),
            user: params.getParam(
                'user', ParamType.DocumentReference, false, ['users']),
            special: params.getParam('special', ParamType.String),
            locall: params.getParam('locall', ParamType.String),
            sched: params.getParam('sched', ParamType.String),
            hosp: params.getParam('hosp', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'kafengo',
          path: '/kafengo',
          builder: (context, params) => KafengoWidget(),
        ),
        FFRoute(
          name: 'review',
          path: '/review',
          builder: (context, params) => ReviewWidget(
            commentdetails: params.getParam('commentdetails',
                ParamType.DocumentReference, false, ['reviews']),
          ),
        ),
        FFRoute(
          name: 'TreeAPIlist',
          path: '/treeAPIlist',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'TreeAPIlist')
              : TreeAPIlistWidget(),
        ),
        FFRoute(
          name: 'moreinfo',
          path: '/moreinfo',
          builder: (context, params) => MoreinfoWidget(
            name: params.getParam('name', ParamType.String),
            treeImage: params.getParam('treeImage', ParamType.String),
            description: params.getParam('description', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'detaCopy',
          path: '/detaCopy',
          builder: (context, params) => DetaCopyWidget(),
        ),
        FFRoute(
          name: 'profileUser',
          path: '/profileUser',
          builder: (context, params) => ProfileUserWidget(
            username: params.getParam('username', ParamType.String),
            useremail: params.getParam('useremail', ParamType.String),
            location: params.getParam('location', ParamType.String),
            photo: params.getParam('photo', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'visitationTab',
          path: '/visitationTab',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'visitationTab')
              : VisitationTabWidget(),
        ),
        FFRoute(
          name: 'CarbonCalculator',
          path: '/carbonCalculator',
          builder: (context, params) => CarbonCalculatorWidget(),
        ),
        FFRoute(
          name: 'activities',
          path: '/activities',
          builder: (context, params) => ActivitiesWidget(),
        ),
        FFRoute(
          name: 'tokenpage',
          path: '/tokenpage',
          builder: (context, params) => TokenpageWidget(),
        ),
        FFRoute(
          name: 'learningpage',
          path: '/learningpage',
          builder: (context, params) => LearningpageWidget(),
        ),
        FFRoute(
          name: 'adminDashboard',
          path: '/adminDashboard',
          builder: (context, params) => AdminDashboardWidget(),
        ),
        FFRoute(
          name: 'adminSettings',
          path: '/adminSettings',
          builder: (context, params) => AdminSettingsWidget(),
        ),
        FFRoute(
          name: 'ProfileSettings',
          path: '/profileSettings',
          builder: (context, params) => ProfileSettingsWidget(),
        ),
        FFRoute(
          name: 'treesMgt',
          path: '/treesMgt',
          builder: (context, params) => TreesMgtWidget(),
        ),
        FFRoute(
          name: 'farmsMgt',
          path: '/farmsMgt',
          builder: (context, params) => FarmsMgtWidget(),
        ),
        FFRoute(
          name: 'demo2',
          path: '/demo2',
          asyncParams: {
            'treedetails':
                getDoc(['fielddetails'], FielddetailsRecord.fromSnapshot),
          },
          builder: (context, params) => Demo2Widget(
            treedetails: params.getParam('treedetails', ParamType.Document),
            userorof: params.getParam(
                'userorof', ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'mainDashboard',
          path: '/mainDashboard',
          builder: (context, params) => MainDashboardWidget(),
        ),
        FFRoute(
          name: 'donorAdminHomePage',
          path: '/donorAdminHomePage',
          builder: (context, params) => DonorAdminHomePageWidget(),
        ),
        FFRoute(
          name: 'donorManagement',
          path: '/donorManagement',
          builder: (context, params) => DonorManagementWidget(),
        ),
        FFRoute(
          name: 'treedetailsfromvisitatationtab',
          path: '/treedetailsfromvisitatationtab',
          builder: (context, params) => TreedetailsfromvisitatationtabWidget(
            appointmentDetails: params.getParam('appointmentDetails',
                ParamType.DocumentReference, false, ['appointments']),
            treedetails: params.getParam(
                'treedetails',
                ParamType.DocumentReference,
                false,
                ['fielddetails', 'mytrees']),
          ),
        ),
        FFRoute(
          name: 'demo2Copy',
          path: '/demo2Copy',
          asyncParams: {
            'treedetails':
                getDoc(['fielddetails'], FielddetailsRecord.fromSnapshot),
          },
          builder: (context, params) => Demo2CopyWidget(
            treedetails: params.getParam('treedetails', ParamType.Document),
            userorof: params.getParam(
                'userorof', ParamType.DocumentReference, false, ['users']),
          ),
        ),
        FFRoute(
          name: 'fieldmaps',
          path: '/fieldmaps',
          builder: (context, params) => FieldmapsWidget(),
        ),
        FFRoute(
          name: 'confirmcountry',
          path: '/confirmcountry',
          builder: (context, params) => ConfirmcountryWidget(
            country: params.getParam('country', ParamType.String),
            averageFootprint:
                params.getParam('averageFootprint', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'searchcountriespage',
          path: '/searchcountriespage',
          builder: (context, params) => SearchcountriespageWidget(),
        ),
        FFRoute(
          name: 'offseteachcountry',
          path: '/offseteachcountry',
          builder: (context, params) => OffseteachcountryWidget(
            country: params.getParam('country', ParamType.String),
            avarageFootprint:
                params.getParam('avarageFootprint', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'chatsamplepage',
          path: '/chatsamplepage',
          builder: (context, params) => ChatsamplepageWidget(),
        ),
        FFRoute(
          name: 'describediet',
          path: '/describediet',
          builder: (context, params) => DescribedietWidget(
            footprintfrompreviouspae:
                params.getParam('footprintfrompreviouspae', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'describetravel',
          path: '/describetravel',
          builder: (context, params) => DescribetravelWidget(
            footprintfromprevpage:
                params.getParam('footprintfromprevpage', ParamType.double),
            country: params.getParam('country', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'testpage',
          path: '/testpage',
          builder: (context, params) => TestpageWidget(),
        ),
        FFRoute(
          name: 'describeVehiclemovement',
          path: '/describeVehiclemovement',
          builder: (context, params) => DescribeVehiclemovementWidget(
            footprintfrompreviouspage:
                params.getParam('footprintfrompreviouspage', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'describeShopping',
          path: '/describeShopping',
          builder: (context, params) => DescribeShoppingWidget(
            footprintfrompreviouspage:
                params.getParam('footprintfrompreviouspage', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'describeFuel',
          path: '/describeFuel',
          builder: (context, params) => DescribeFuelWidget(
            footprintfrompreviouspage:
                params.getParam('footprintfrompreviouspage', ParamType.double),
            currentpagevalue:
                params.getParam('currentpagevalue', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'describeHome',
          path: '/describeHome',
          builder: (context, params) => DescribeHomeWidget(
            footprintformpreviouspage:
                params.getParam('footprintformpreviouspage', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'describePeopleInyourHome',
          path: '/describePeopleInyourHome',
          builder: (context, params) => DescribePeopleInyourHomeWidget(
            footprintfrompreviospage:
                params.getParam('footprintfrompreviospage', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'describeElectricity',
          path: '/describeElectricity',
          builder: (context, params) => DescribeElectricityWidget(
            footprintfrompreviouspage:
                params.getParam('footprintfrompreviouspage', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'describefinal',
          path: '/describefinal',
          builder: (context, params) => DescribefinalWidget(
            footprintfrompreviospage:
                params.getParam('footprintfrompreviospage', ParamType.double),
            flying: params.getParam('flying', ParamType.double),
            mobility: params.getParam('mobility', ParamType.double),
            housing: params.getParam('housing', ParamType.double),
            diet: params.getParam('diet', ParamType.double),
            spending: params.getParam('spending', ParamType.double),
          ),
        ),
        FFRoute(
          name: 'registerpage',
          path: '/registerpage',
          builder: (context, params) => RegisterpageWidget(),
        ),
        FFRoute(
          name: 'intro1',
          path: '/intro1',
          builder: (context, params) => Intro1Widget(),
        ),
        FFRoute(
          name: 'activitiesCopy',
          path: '/activitiesCopy',
          builder: (context, params) => ActivitiesCopyWidget(),
        ),
        FFRoute(
          name: 'selectProject',
          path: '/selectProject',
          builder: (context, params) => SelectProjectWidget(),
        ),
        FFRoute(
          name: 'projectlist',
          path: '/projectlist',
          builder: (context, params) => ProjectlistWidget(),
        )
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
            return '/onboarding';
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
                  color: FlutterFlowTheme.of(context).background,
                  child: Image.asset(
                    'assets/images/cropped-cropped-fnblogo-1-removebg-preview.png',
                    fit: BoxFit.fitWidth,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
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

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
