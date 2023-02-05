import 'package:flutter/material.dart';

class PrettyInkWellButton extends StatefulWidget{

  final String textOfFilledButton;
  final VoidCallback onPressed;
  final double? height;
  final double? width;


  const PrettyInkWellButton(

      {
        super.key,
        required this.onPressed,
        required this.textOfFilledButton,
        this.height,
        this.width,
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

    final prettyInkWellButton = InkWell(
        onTap: widget.onPressed,

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

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 25,
                  width: 25,

                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,

                  ),
                  child: const CircleAvatar(
                    //
                    backgroundImage: AssetImage(
                        "assets/img/gmail.png"
                    ),
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
          ),
        ),


    );

    return prettyInkWellButton;
  }


}