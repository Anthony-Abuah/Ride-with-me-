import 'package:flutter/material.dart';


class DateChip extends StatelessWidget {
  final String text;
  final Color textColor;
  final Function onTapItem;
  const DateChip({super.key, required this.text, required this.textColor, required this.onTapItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.0,
      child: TextButton(
        onPressed: () {
          onTapItem();
        },
        style: TextButton.styleFrom(
          side: const BorderSide(
            color: Color.fromRGBO(186, 215, 207, 1), // your color here
            width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: textColor, //Color.fromRGBO(25, 150, 117, 1),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700
              )
          ),
        ),
      ),
    );
  }
}

class DateChipWithIcon extends StatelessWidget {
  final String? icon;
  final String text;
  final Color textColor;
  final Function onTapItem;
  const DateChipWithIcon({super.key, required this.text, required this.textColor, this.icon, required this.onTapItem});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.0,
      child: TextButton(
        onPressed: () {
          onTapItem();
        },
        style: TextButton.styleFrom(
          side: const BorderSide(
              color: Color.fromRGBO(186, 215, 207, 1), // your color here
              width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                width: 16.0,
                height: 16.0,
                image: AssetImage("assets/calendar.png")),
              const SizedBox(width: 8.0),
              Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textColor, //Color.fromRGBO(25, 150, 117, 1),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}

