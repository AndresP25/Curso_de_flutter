import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/src/profile/resources/model/user.dart' as user_Profix;

import '../../../home/resources/model/place.dart';

//clase para manejar la conexion a cloud_firestore
class CloudFirestoreAPI {

  //Definimos collections
  final String USERS = "users";
  final String PLACES = "places";

  //instancia de cloud_firestore
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //metodo para verificar cambio de logeo del user
  Future<void> updateUserData(user_Profix.User user) async {

    //añade collection llamada users a la db
    CollectionReference usersCollection = _db.collection(USERS);

    //añade documento de nombre userId a la coleccion USERS de la db
    DocumentReference userDocument = usersCollection.doc(user.uId);

    //seteando datos en la coleccion
    return await userDocument.set({
      'uId': user.uId,
      'userName': user.userName,
      'email': user.email,
      'userPhotoUrl': user.userPhotoUrl,
      'userCreatedPlaces': user.userCreatedPlaces,
      'userFavoritePlaces': user.userFavoritePlaces,
      'lastSignIn': DateTime.now()
    },SetOptions(merge: true));
  }

  Future<void> updatePlaceData(Place place) async {

    //consulta de usuario logeado actualmente
    String uId = _auth.currentUser!.uid;

    //añade collection llamada PLACES a la db
    CollectionReference placesCollection = _db.collection(PLACES);

    //como no se tiene un id para el nombre del document, entonces se crea
    //direcatmente el documento con .add que tambien
    //genera un identificador unico y autoincrementado
    await placesCollection.add({
      'namePlace': place.namePlace,
      'description': place.description,
      'urlPlaceImage': place.urlPlaceImage,
      'likes':place.likes,

      //tipo de dato reference puesto que se manda un objeto de tipo usuario
      //el cual se encuentra logeado
      'userOwner': "$USERS/$uId"
    });

  }
}