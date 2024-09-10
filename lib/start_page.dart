import 'package:flutter/material.dart';


class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(0, 65, 45, 1),
        body: Column(
          children: <Widget> [
            Expanded(
                child: Center(
                    child: TextButton(onPressed: (){
                      Navigator.pushReplacementNamed(
                        context, "/findRide",
                      );
                    },
                        child: const Text("Ride with us",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 24.0)
                        )
                    )

                )
            ),
            const Opacity(
              opacity: 0.4,
              child: Image(
                image: AssetImage("assets/location.png"),
                width: 100.0,
                height: 100.0,
              ),
            )
          ],
        )
    );
  }
}
