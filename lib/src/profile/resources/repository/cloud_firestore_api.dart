import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_trips_app/src/profile/resources/model/user.dart';

//clase para manejar la conexion a cloud_firestore
class CloudFirestoreAPI {

  //Definimos collections
  final String USERS = "users";
  final String PLACE = "places";

  //instancia de cloud_firestore
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  //metodo para verificar cambio de logeo del user
  Future<void> updateUserData(User user) async {

    //añade collection llamada users a la db
    CollectionReference usersCollection = _db.collection(USERS);

    //añade documento de nombre userId a la coleccion USERS de la db
    DocumentReference userDocument = usersCollection.doc(user.uId);

  }
}