import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:platzi_trips_app/src/common_used_widgets/pretty_inkwell_button.dart';

import '../../../../../common_used_widgets/action_button_generic.dart';
import '../../../../../common_used_widgets/card_image_generic.dart';

class AddNewPlacePhoto extends StatefulWidget {
  const AddNewPlacePhoto({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AddNewPlacePhoto();
  }
}

String? photoUrl;
bool imageNull = false;
bool asset = false;

class _AddNewPlacePhoto extends State<AddNewPlacePhoto> {

  @override
  Widget build(BuildContext context) {

    if (photoUrl == null) {
      imageNull = true;
      asset = true;
    }

    return Stack(
        alignment: const Alignment(0,1.15),
        children: [
          SizedBox(
              height: 260,
              child: Center(
                child: CardImageGeneric(
                  network: false,
                  asset: asset,
                  pathImage: imageNull ? "assets/img/photo.png" : photoUrl!,
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  top: 0,
                  right: 50,
                  left: 50,
                ),
              )

          ),
          ActionButtonGeneric(
            onPressed: (){showPickDialog(context);},
            heroTag: "Take a photo",
            icon: Icons.camera_alt,
            mini: false,
            tooltip: 'Take a photo',
            snackbar: false,
          )


        ]
    );
  }

  Future<void> showPickDialog(BuildContext context) async{
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(

            title: const Expanded(
              child: Center(
                child:Text(
                  textAlign: TextAlign.center,
                  'Take a photo or choose from your gallery',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
              )
            ) ,
            content: Row(
                mainAxisAlignment: MainAxisAlignment.center,

              children: [

                PrettyInkWellButton(
                    onPressed: () async => pickImage(context, await ImagePicker().pickImage(source: ImageSource.camera)),
                    textOfFilledButton: 'Camera',
                    height: 50,
                    width:  120,
                    buttonWithIcon: false,
                    snackbar: false
                ),

                const SizedBox(width: 20),

                PrettyInkWellButton(
                    onPressed: () async => pickImage(context, await ImagePicker().pickImage(source: ImageSource.gallery)),
                    textOfFilledButton: 'Gallery',
                    height: 50,
                    width: 120,
                    buttonWithIcon: false,
                    snackbar: false
                ),
              ],
            )
          );
        }
    );
  }

  void pickImage(BuildContext context, image) {

    Navigator.pop(context);//Cierra el dialog
    if (image == null) {
      return;
    }

    setState(() {
      photoUrl = image.path;
      imageNull = false;
      asset = false;
    });

  }
}





