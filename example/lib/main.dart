import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:sber_auth_sdk_flutter/platform_api/auth_parameters/sber_auth_parameters.dart';
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
  String _platformVersion = 'Unknown';
  final _sberAuthSdkFlutterPlugin = SberAuthSdkFlutter();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion = await _sberAuthSdkFlutterPlugin.getPlatformVersion() ??
          'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

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

  static const String _redirectUrl = 'your-deeplink';
  static const String _clientId = 'your-client-id';
  static const String _scope = 'openid name email mobile gender birthdate';
  static const bool _inCustomTabs = true;

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
        redirectUrl: _redirectUrl,
        scope: _scope,
        nonce: nonce,
        state: state,
        inCustomTabs: _inCustomTabs,
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
