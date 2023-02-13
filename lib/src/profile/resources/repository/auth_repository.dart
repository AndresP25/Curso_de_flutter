import 'firebase_auth_api.dart';
import 'package:firebase_auth/firebase_auth.dart';

//clase que ayuda a controlar las fuentes de acceso
//aca se puede agregar cuantos metodos sean necesarios para los tipos de acceso
//que tenga la app
//cada metodo obtendra de una diferente api de ser necesario
class AuthRepository {

  final _firebaseAuthAPI = FirebaseAuthAPI();

  Future<UserCredential?> signInFirebase() =>  _firebaseAuthAPI.signIn();

  signOut() => _firebaseAuthAPI.signOut();

}