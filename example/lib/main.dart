import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sber_auth_sdk_flutter/sber_auth_sdk_flutter.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/home',
        errorBuilder: (context, state) => UnknownRouteScreen(
          routerState: state,
        ),
        routes: [
          GoRoute(
            path: '/home',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/',
            builder: (context, state) => SberAuthScreen(routerState: state),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String _returnUrl = 'your-deeplink';
  static const String _clientId = 'your-client-id';
  static const String _scope = 'openid name email mobile gender birthdate';
  // ignore: unnecessary_nullable_for_final_variable_declarations
  static const String? _customTabsReturnUrl = 'your-deeplink';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: TextButton(
          onPressed: _onAuthButtonPressed,
          child: const Text('Try sber login'),
        ),
      ),
    );
  }

  Future<void> _onAuthButtonPressed() async {
    final sberSdk = SberAuthSdkFlutter();
    final nonce = const Uuid().v4();
    final state = const Uuid().v4();

    await sberSdk.authorizeWithSberId(
      SberAuthParameters(
        clientId: _clientId,
        returnUrl: _returnUrl,
        scope: _scope,
        nonce: nonce,
        state: state,
        customTabsReturnUrl: _customTabsReturnUrl,
      ),
    );
  }
}

class SberAuthScreen extends StatefulWidget {
  const SberAuthScreen({
    required this.routerState,
    Key? key,
  }) : super(key: key);

  final GoRouterState routerState;

  @override
  State<SberAuthScreen> createState() => _SberAuthScreenState();
}

class _SberAuthScreenState extends State<SberAuthScreen> {
  @override
  void initState() {
    super.initState();
    debugPrint(''' 
    Query params: ${widget.routerState.queryParams}
     ''');
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (!context.canPop()) {
          context.replace('/home');
          return false;
        }

        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sber Auth Page'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Name: ${widget.routerState.name}',
              ),
              Text(
                'Path: ${widget.routerState.path}',
              ),
              Text(
                'Params: ${widget.routerState.params}',
              ),
              Text(
                'Query params: ${widget.routerState.queryParams}',
              ),
              Text(
                'Full path: ${widget.routerState.fullpath}',
              ),
              Text(
                'Location: ${widget.routerState.location}',
              ),
              Text(
                'Extra: ${widget.routerState.extra}',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UnknownRouteScreen extends StatelessWidget {
  const UnknownRouteScreen({
    required this.routerState,
    Key? key,
  }) : super(key: key);

  final GoRouterState routerState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Unknown route: ${routerState.location}'),
      ),
    );
  }
}
