import 'package:flutter/material.dart';


class PriceCard extends StatelessWidget {
  final bool checkedIcon;
  final String image;
  final String topText;
  final String bottomText;
  const PriceCard({super.key, required this.image, required this.topText, required this.bottomText, required this.checkedIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          //color: const Color.fromRGBO(230, 235, 230, 1),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
          color: const Color.fromRGBO(230, 235, 230, 1),
          borderRadius: BorderRadius.circular(4)
          ),
          child: Stack(children: <Widget>[
            TextButton(onPressed: (){},
                child: Image(
                    image: AssetImage("assets/$image.png"),
                    height: 45.0,
                    width: 45.0
                )
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(32.0, 0.0, 0.0, 0.0),
              height: 16,
              width: 16,
              child: (checkedIcon)?  const Icon(Icons.check_box_rounded, size: 20.0, color: Colors.green,) : const SizedBox(height: 0.0, width: 0.0,),
            )
          ],
          ),
        ),
        const SizedBox(height: 4.0,),
        Text(topText,
          textAlign: TextAlign.start,
          style: const TextStyle(
            color: Color.fromRGBO(32, 70, 60, 1),
            fontSize: 10.0,
            fontWeight: FontWeight.w400
          ),
        ),
        const SizedBox(height: 4.0,),
        Text(bottomText,
          textAlign: TextAlign.start,
          style: const TextStyle(
            color: Color.fromRGBO(77, 159, 137, 1),
            fontSize: 10.0,
            fontWeight: FontWeight.w700
          ),
        ),
      ],
    );
  }
}
