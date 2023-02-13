import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/src/profile/resources/repository/auth_repository.dart';
import 'package:platzi_trips_app/src/profile/resources/repository/cloud_firestore_repository.dart';
import 'package:platzi_trips_app/src/profile/resources/model/user.dart' as user_Profix;

import '../../home/resources/model/place.dart'; //para evitar conflicto con user de firebase


//esta clase conecta el repository con la ui
class ProfileBloc implements Bloc {

  final _authRepository = AuthRepository();

  //Stream para el manejo de sesion
  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus  => streamFirebase; //devuelve el estado de la sesion

  //casos de uso

  //1. Sign In with Google
  Future<UserCredential?> signIn() => _authRepository.signInFirebase();

  //2. Sign Out
  signOut(){
    _authRepository.signOut();
  }

  //3. Registrar usuario en bd
  final _cloudFirestoreRepsoitory = CloudFirestoreRepository();
  void updateUserData(user_Profix.User user) => _cloudFirestoreRepsoitory.updateUserDataFirestore(user);

  //4. Registrar place en bd
  Future<void> updatePlaceData(Place place) => _cloudFirestoreRepsoitory.updatePlaceFirestore(place);

  @override
  void dispose() {
    // TODO: implement dispose
  }

}