// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_auth/firebase_auth.dart';

Future<bool> changePassword(
  BuildContext context,
  String currentPassword,
  String newPassword,
) async {
  bool success = false;

  try {
    // Crea una instancia del usuario actual.
    var user = await FirebaseAuth.instance.currentUser!;
    // Debes volver a autenticar al usuario antes de actualizar la contraseña.
    final cred = EmailAuthProvider.credential(
        email: user.email!, password: currentPassword);
    await user.reauthenticateWithCredential(cred);

    try {
      await user.updatePassword(newPassword);
      success = true;
      var uid;
      var usersRef;
      usersRef.doc(uid).update({"password": newPassword});
    } catch (error) {
      print('Error al actualizar la contraseña: $error');
    }
  } catch (err) {
    print('Error al reautenticar al usuario: $err');
  }

  return success;
}
