import 'package:flutter/material.dart';

class PrettyInkWellButton extends StatefulWidget{

  final String textOfFilledButton;
  final VoidCallback onPressed;
  final bool buttonWithIcon;
  bool? iconBool;
  IconData? icon;
  String? imagePath;
  final double height;
  final double width;
  final bool snackbar;
  String? snackbarTextPressed;

   PrettyInkWellButton(

      {
        super.key,
        required this.onPressed,
        required this.textOfFilledButton,
        required this.height,
        required this.width,
        required this.buttonWithIcon,
        required this.snackbar,
        this.snackbarTextPressed,
        this.iconBool,
        this.icon,
        this.imagePath,

      }
  );

  @override
  State<StatefulWidget> createState() {

    return _PrettyInkWellButton();
  }
}

class _PrettyInkWellButton extends State<PrettyInkWellButton>{

  @override
  Widget build(BuildContext context) {

    void onPressedButton(){

      if (widget.snackbar == true){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                widget.snackbarTextPressed!,
                style: const TextStyle(
                  fontSize:15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),

              duration: const Duration(milliseconds: 2000),

              width: 300.0, // Width of the SnackBar.
              padding: const EdgeInsets.all( 8 ),

              behavior: SnackBarBehavior.floating,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            )
        );
      }

      widget.onPressed();


    }

    final prettyInkWellButton = InkWell(
        onTap: onPressedButton,

        child: Container(


          height: widget.height,
          width: widget.width,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
                colors: [
                  Colors.lightBlueAccent,
                  Colors.blueAccent,
                ],
                begin: FractionalOffset(0, 0),
                end: FractionalOffset(1,1)
            ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10,
                    offset: Offset(0,7)
                )

              ]
          ),

          child: Center(

            child: widget.buttonWithIcon ?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 25,
                    width: 25,

                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,


                    ),
                    child: widget.iconBool! ?
                        Icon(
                            widget.icon,
                            color: Colors.deepPurple,
                        )
                        :
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(0, 255, 255, 255),//sin color
                          backgroundImage: NetworkImage(widget.imagePath!),
                        ),
                  ),

                  const SizedBox (width: 15),

                  Text(
                    widget.textOfFilledButton,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              )
              :
              Text(
                widget.textOfFilledButton,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              )
          ),
        ),


    );

    return prettyInkWellButton;
  }


}