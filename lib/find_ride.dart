import 'package:flutter/material.dart';
import 'package:ride_with_us_app/basic_text_field.dart';
import 'package:ride_with_us_app/date_chip.dart';
import 'package:ride_with_us_app/price_card.dart';

import 'model/date_chip_info.dart';

class FindRidePage extends StatefulWidget {
  const FindRidePage({super.key});

  @override
  State<FindRidePage> createState() => _FindRidePageState();
}

class _FindRidePageState extends State<FindRidePage> {
  final destinationController = TextEditingController();
  late Color textColor = const Color.fromRGBO(25, 150, 117, 1);
  late int selectedIndex = 0;
  late int numberOfPersons = 0;

  List<DateChipInfo> dateChipInfo = [
    DateChipInfo(text: "Today", icon: null),
    DateChipInfo(text: "Tomorrow", icon: null),
    DateChipInfo(text: "22nd", icon: null),
    DateChipInfo(text: "Other", icon: "assets/calendar"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 270.0,
                width: double.infinity,
                color: const Color.fromRGBO(32, 70, 60, 1),
                child: Stack(children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 58.0),
                      const SizedBox(
                        width: 333.0,
                        height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(31.0, 0.0, 16.0, 0.0),
                              child: SizedBox(
                                width: 90.0,
                                height: 32.0,
                                child: Text(
                                  "Hi Kojo,",
                                  style: TextStyle(
                                      color: Color.fromRGBO(242, 242, 242, 1),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 24.0),
                                ),
                              ),
                            ),
                            CircleAvatar(
                              child: Image(
                                width: 40.0,
                                height: 40.0,
                                image: AssetImage("assets/woman.png"),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(31.0, 0.0, 16.0, 0.0),
                        child: BasicTextField(
                            text: "Where are you going?",
                            controller: destinationController,
                            textInputType: TextInputType.name,
                            textColor: Colors.white,
                            labelColor: Colors.white70,
                            backgroundColor: const Color.fromRGBO(54, 91, 81, 1),
                            fontSize: 16.0),
                      ),
                      const SizedBox(height: 16.0),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(31.0, 0.0, 0.0, 0.0),
                        child: BasicTextField(
                            text: "Closest bus terminal",
                            controller: destinationController,
                            textInputType: TextInputType.name,
                            textColor: Colors.white,
                            labelColor: Colors.white70,
                            backgroundColor: const Color.fromRGBO(54, 91, 81, 1),
                            fontSize: 16.0),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(300.0, 160.0, 0.0, 0.0),
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image(
                        width: 40.0,
                        height: 40.0,
                        image: AssetImage("assets/arrow_swap.png"),
                      ),
                    ),
                  )
                ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 16.0),
                height: 67.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Available Dates",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: dateChipInfo.map((dateChip) {
                        textColor =
                            (selectedIndex == dateChipInfo.indexOf(dateChip))
                                ? const Color.fromRGBO(25, 150, 117, 1)
                                : Colors.black45;
                        return (dateChip.icon == null)
                            ? DateChip(
                                text: dateChip.text,
                                textColor: textColor,
                                onTapItem: () {
                                  setState(() {
                                    selectedIndex = dateChipInfo.indexOf(dateChip);
                                  });
                                })
                            : DateChipWithIcon(
                                text: dateChip.text,
                                textColor: textColor,
                                onTapItem: () {
                                  setState(() {
                                    selectedIndex =
                                        dateChipInfo.indexOf(dateChip);
                                  });
                                });
                      }).toList(),
                    ),
                    /*SizedBox(
                      height: 40.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dateChipInfo.length,
                        itemBuilder: (BuildContext context, int index) {
                          textColor = (index == selectedIndex)? const Color.fromRGBO(25, 150, 117, 1) : Colors.black45 ;
                          return DateChipWithIcon(
                            text: dateChipInfo[index].text,
                            textColor: textColor,
                            icon: dateChipInfo[index].icon,
                            onTapItem: (){
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          );
                        },
                      ),
                    ),*/
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 27.0),
                  child: const Divider(height: 20.0, thickness: 0.5 ,color: Color.fromRGBO(150, 200, 180, 1))),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 27.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: <Widget>[
                          const Image(image: AssetImage("assets/people.png")),
                          const SizedBox(width: 8.0,),
                          Text("$numberOfPersons person",
                          style: const TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      color: const Color.fromRGBO(227, 237, 234, 1),
                      width: 104.0,
                      height: 32.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 50,
                            height: 32,
                            child: Center(
                              child: TextButton(
                                  onPressed: (){},
                                  child: const Icon(
                                    Icons.remove,
                                    color: Color.fromRGBO(32, 70, 60, 1),
                                    size: 18.0,
                                  )
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.symmetric(vertical: 10.0),
                              child: const VerticalDivider(width: 2.0, color: Color.fromRGBO(150, 200, 180, 1),)),
                          SizedBox(
                            width: 50,
                            height: 32,
                            child: Center(
                              child: TextButton(
                                  onPressed: (){},
                                  child: const Icon(
                                      Icons.add,
                                      color: Color.fromRGBO(32, 70, 60, 1),
                                      size: 18.0
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 27.0),
                  child: const Divider(height: 20.0, thickness: 0.5, color: Color.fromRGBO(150, 200, 180, 1))),
              //Trip Container
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 27.0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Text("Make your trip much more pleasurable",
                      style: TextStyle(
                        color: Color.fromRGBO(76, 76, 76, 1),
                        fontSize: 14.0
                      )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        PriceCard(image: "breakfast", topText: "Breakfast", bottomText: "GHS 50.00", checkedIcon: true,),
                        PriceCard(image: "sleeping_pod", topText: "Sleeping Pod", bottomText: "GHS 100.00", checkedIcon: false,),
                        PriceCard(image: "drinks", topText: "Drinks", bottomText: "GHS 40.00", checkedIcon: false,),
                        PriceCard(image: "blanket", topText: "Blanket", bottomText: "GHS 92.00", checkedIcon: false,),
                      ],
                    )
                  ]
                ),
              ),
              const SizedBox(height: 24.0),
              Container(
                //color: const Color.fromRGBO(25, 150, 117, 1),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(25, 150, 117, 1),
                    borderRadius: BorderRadius.circular(8)
                ),
                height: 49.0,
                width: 313.0,
                child: TextButton(
                    onPressed: (){},
                    child: const Text("Find times and prices",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 14.0)
                    ),
                ),
              )

            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(25, 150, 117, 1),
        unselectedItemColor: Colors.black26,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 10.0),
        unselectedLabelStyle: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 10.0),
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket_outlined), label: "Ticket"),
        BottomNavigationBarItem(icon: Icon(Icons.people_alt_sharp), label: "Referral"),
        BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: "Settings"),
      ],),
    );
  }
}
