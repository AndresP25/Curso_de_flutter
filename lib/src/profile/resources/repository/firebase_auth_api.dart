import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

//archivo que contiene la autenticacion
class FirebaseAuthAPI {

  final FirebaseAuth _auth = FirebaseAuth.instance; //crea la instancia del FA
  final GoogleSignIn googleSignIn = GoogleSignIn(); //crea la instacia del GSI

  Future<UserCredential?> signIn() async {

    //llama el cuadro de conexion con gmail
    //Primera autenticacion con Google
    // Trigger the authentication flow
    GoogleSignInAccount? googleSignInAccount;
    try {
      googleSignInAccount = await googleSignIn.signIn();
    }catch (error) {
      print("Error al mostrar la ventana de cuentas de Google: error: $error");
    }

    // Obtain the auth details from the request
    if (googleSignInAccount != null) {
      //obtiene las credenciales de la cuenta de gmail
      GoogleSignInAuthentication? googleSignInAuthentication;
      try {
        googleSignInAuthentication = await googleSignInAccount.authentication;
      } catch (error) {
        print("Error al obtener las credenciales de la cuenta de Google: error: $error");
      }

      //se crean las credenciales obtenidas desde la autenticacion
      OAuthCredential? credential;
      if (googleSignInAuthentication != null) {

        credential= GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken
        );

      } else {
        print("Objeto credentials vacio");
      }


      //se usa el objeto de FA al cual le vamos a pasar las credenciales
      if (credential != null) {
        try {

          UserCredential user = await _auth.signInWithCredential(credential);

          //el objeto user ya contiene las credenciales autenticadas en FA y gmail
          return user;

        } catch (e) {
          print("Error al autenticar con firebase: error: $e");
        }
      }
    } else {
      return null;
    }
  }

  void signOut() async{

    //cierra la sesion de firebase haciendo uso de la instancia de FA
    await _auth.signOut().then((value) => print("Sesion cerrada"));

    //Cerrar sesion de GSI la instancia
    googleSignIn.signOut();
    print("Sesiones cerradas");
  }

}