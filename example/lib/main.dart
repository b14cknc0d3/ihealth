import 'package:flutter/material.dart';
import 'package:ihealth/ihealth.dart';

void main(List<String> args) {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ihealth",
      home: ExampleHome(),
    );
  }
}

class ExampleHome extends StatefulWidget {
  const ExampleHome({super.key});

  @override
  State<ExampleHome> createState() => _ExampleHomeState();
}

class _ExampleHomeState extends State<ExampleHome> {
  IHealthCredential? _iHealthCredencial;
  final String clientId = "";
  final String clientSecret = "";
  final String redirectUri = "";
  final String redirectScheme = "ihealth";
  final bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("iHealth Plugin Test"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("IHealthCredencial => $_iHealthCredencial"),
            ElevatedButton(
              onPressed: _isLoading
                  ? null
                  : () async {
                      final IHealthAuthUrl iHealthAuthUrl = IHealthAuthUrl(
                          clientSecret: clientSecret,
                          clientId: clientId,
                          redirectUri: redirectUri,
                          credential: null);

                      _iHealthCredencial = await IHealthService.authorize(
                          authUrl: iHealthAuthUrl,
                          redirectScheme: redirectScheme);
                      setState(() {});
                    },
              child: _isLoading
                  ? const SizedBox(
                      height: 23,
                      width: 23,
                      child: CircularProgressIndicator.adaptive(),
                    )
                  : const Text("connect to iHeath"),
            ),
          ],
        ),
      ),
    );
  }
}
