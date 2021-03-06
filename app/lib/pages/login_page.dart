import 'package:flutter/material.dart';
import 'package:dashclicker/logic/firebase_notifier.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var firebaseNotifier = context.watch<FirebaseNotifier>();

    if (firebaseNotifier.isLoggingIn) {
      return Center(
        child: Text('Logging in...'),
      );
    }
    return Center(
        child: ElevatedButton(
      onPressed: () {
        firebaseNotifier.login();
      },
      child: Text('Login'),
    ));
  }
}
