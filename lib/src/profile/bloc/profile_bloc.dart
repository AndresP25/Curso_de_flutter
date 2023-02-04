import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/src/profile/resources/repository/auth_repository.dart';

//esta clase conecta el repository con la ui
class ProfileBloc implements Bloc {

  final _authRepository = AuthRepository();

  //Stream para el manejo de sesion
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus  => streamFirebase; //devuelve el estado de la sesion

  //casos de uso

  //1. Sign In with Google
  Future<UserCredential?> signIn(){
    return _authRepository.signInFirebase();
  }

  //2. Sign Out
  signOut(){
    _authRepository.signOut();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}