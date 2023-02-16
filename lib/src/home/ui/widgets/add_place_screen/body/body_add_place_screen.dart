import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/src/common_used_widgets/pretty_inkwell_button.dart';
import 'package:platzi_trips_app/src/home/resources/model/place.dart';
import 'package:platzi_trips_app/src/home/ui/widgets/add_place_screen/body/add_new_place_photo.dart';
import 'package:platzi_trips_app/src/home/ui/widgets/add_place_screen/body/text_input_location.dart';
import '../../../../../common_used_widgets/text_input_generic.dart';
import '../../../../../profile/bloc/profile_bloc.dart';

class BodyAddPlaceScreen extends StatelessWidget{

  const BodyAddPlaceScreen({super.key});

  @override
  Widget build(BuildContext context) {

    ProfileBloc profileBloc = BlocProvider.of(context);

    final controllerTitleText = TextEditingController();
    final controllerDescriptionText = TextEditingController();
    final controllerLocationText = TextEditingController();

    return Container(
      margin: const EdgeInsets.only(top: 100,bottom: 20),
      child: ListView(
          children: [

            const AddNewPlacePhoto(),

            const SizedBox(height: 10,),

            Container(
              margin: const EdgeInsets.only(top: 20),
              child: TextInputGeneric(
                hintText: 'Title',
                inputType: null,
                controller: controllerTitleText,
                maxLines: 1,
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
              child: TextInputGeneric(
                hintText: 'Description',
                inputType: TextInputType.multiline,
                controller: controllerDescriptionText,
                maxLines: 4,
              ),
            ),

            Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextInputLocation(
                    hintText: "Add Location",
                    iconData: Icons.location_on,
                    controller: controllerLocationText
                )
            ),

            Container(
              margin: const EdgeInsets.only(top: 20,bottom: 20,right: 70,left: 70),
              child: PrettyInkWellButton(
                  onPressed: (){
                    //1. Cloud Firestore se entregara el objeto place
                    profileBloc.updatePlaceData(Place(
                        //pId: pId,
                        namePlace: controllerTitleText.text,
                        description: controllerDescriptionText.text,
                        likes: 0,
                        //urlPlaceImage: urlPlaceImage,
                        //userOwner: userOwner
                    )).whenComplete((){
                      print ("Termino");
                      Navigator.pop(context);
                    });

                    //2. Firebase Storage devuelve URL para imagen
                  },
                  textOfFilledButton: "Add Place",
                  height: 50,
                  width: 50,
                  buttonWithIcon: false,
                  snackbar: false
              ),
            )
          ]
      ),
    );
  }

}