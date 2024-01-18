import 'package:devfin/app/app.dart';
import 'package:devfin/bootstrap.dart';
import 'package:devfin/firebase_options_dev.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await bootstrap(() => const DevFinApp());
}
