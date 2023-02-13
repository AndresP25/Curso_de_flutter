import 'package:platzi_trips_app/src/profile/resources/model/user.dart' as user_Profix;
import 'package:platzi_trips_app/src/profile/resources/repository/cloud_firestore_api.dart';

import '../../../home/resources/model/place.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreAPI = CloudFirestoreAPI();

  Future<void> updateUserDataFirestore(user_Profix.User user) async => _cloudFirestoreAPI.updateUserData(user);

  Future<void> updatePlaceFirestore(Place place) async => _cloudFirestoreAPI.updatePlaceData(place);
}