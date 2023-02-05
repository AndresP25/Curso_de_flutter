import 'package:flutter/material.dart';
import 'package:platzi_trips_app/src/profile/resources/model/user.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/section_data/profile_data.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/src/profile/bloc/profile_bloc.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/section_data/profile_disconected_data.dart';
import 'package:platzi_trips_app/src/profile/ui/widgets/profile_screen/custom_app_bar/section_data/profile_user_photo.dart';

class ProfileSectionData extends StatelessWidget{



  String pathOfDisconectedProfileImage = "assets/img/user.png";
  //String userName = "Chonny";
  //String email = "Chonny@gmail.com";
  ProfileBloc? profileBloc;


  ProfileSectionData({super.key});

  @override
  Widget build(BuildContext context) {

    profileBloc = BlocProvider.of(context);

    return StreamBuilder(
        stream: profileBloc?.streamFirebase,
        builder: (BuildContext context, AsyncSnapshot snapshot){

          //se monitorea el estado de la conexion para que cuando este cargando
          //se muestre un loadingCircle
          switch(snapshot.connectionState){

            case ConnectionState.active:
            case ConnectionState.done:
              return profileSectionData(snapshot);
            default:
              return const CircularProgressIndicator();
          }
        }
    );

  }

  Widget profileSectionData(AsyncSnapshot snapshot) {
    //lee los datos obtenidos por el objeto snapshot,
    // si no tiene datos o hay error muestra seccion de datos vacia
    // si tiene datos presenta seccion de datos con los datos del modelo user

    User user;

    if (!snapshot.hasData || snapshot.hasError) {
      print("No logeado");

      return Row(
        children: [
          ProfileUserPhoto(pathOfProfileImage: pathOfDisconectedProfileImage,
              assetImage: true),
          ProfileDisconectedData(
              disconectedData: "Can't connect to profile. Please login.'"),
        ],
      );

    } else {
      print("Logeado");
      print(snapshot.data);

      user = User(uId: "1",
        userName: snapshot.data.displayName,
        email: snapshot.data.email,
        userPhotoUrl: snapshot.data.photoURL,
      );

      return Row(
        children: [
           ProfileUserPhoto(pathOfProfileImage: user.userPhotoUrl),
          Expanded( child :  ProfileData(user.userName, user.email)),
        ],
      );
    }
  }
}


