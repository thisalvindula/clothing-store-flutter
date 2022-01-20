import 'package:clothing_ui/pages/summerCollection.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [_hello(), _name()],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [_profileImage()],
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SummerCollection()),
                  );
                },
                child: _firstCard(),
              ),
              _secondCard(),
              _offers(),
              _bottomRow(),
            ],
          )
        ],
      ),
    );
  }
}

_hello() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.only(left: 20.0, top: 50.0),
        child: Text(
          "Hello,",
          style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w400,
              fontFamily: 'sen',
              color: Color(0xff262626)),
        ),
      )
    ],
  );
}

_name() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          "Amanda",
          style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.w400,
              fontFamily: 'sen',
              color: Colors.yellow),
        ),
      )
    ],
  );
}

_profileImage() {
  return Padding(
    padding: const EdgeInsets.only(top: 45.0, left: 145),
    child: Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/profileImage.jpg"))),

      //Image.asset("assets/images/profileImage.jpg")
    ),
  );
}

_firstCard() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Container(
                height: 125,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0)),
                  color: Color(0xfffff3e7),
                ),
                child: const Center(
                  child: Text(
                    "Summer\nCollections",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'sen',
                        color: Color(0xff262626)),
                  ),
                ), //BoxDecoration
              ),
            ),
          ), //Container//SizedBox
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Container(
                    height: 125,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                      color: Color(0xfffff3e7),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: (Image.asset("assets/images/secondFirst.png")),
                )
              ],
            ),
          ) //
        ],
      ),
    ),
  );
}

_secondCard() {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: InkWell(
                // onTap: () {
                //   print("Container clicked");
                //   Navigator.push(context, MaterialPageRoute(builder: (Context) => HomePage()));
                // },
                child: Container(
                  height: 125,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0)),
                    color: Color(0xfffcdfea),
                  ),
                  child: const Center(
                    child: Text(
                      "Winter\nCollections",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'sen',
                          color: Color(0xff262626)),
                    ),
                  ), //BoxDecoration
                ),
              ),
            ),
          ), //Container//SizedBox
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Container(
                    height: 125,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                      color: Color(0xfffcdfea),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: (Image.asset("assets/images/secondSecond.png")),
                )
              ],
            ),
          ) //
        ],
      ),
    ),
  );
}

_offers() {
  return const Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: EdgeInsets.only(top: 15.0, left: 20.0),
      child: Text(
        "Offers",
        style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
            fontFamily: 'sen',
            color: Color(0xff262626)),
      ),
    ),
  );
}

_bottomRow() {
  return Center(
    child: Row(
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: (Image.asset(
              "assets/images/secondThird.png",
              height: 191.2,
            )),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 77),
                child: Row(
                  children: const [
                    Text(
                      "Get ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'sen',
                          color: Color(0xff262626)),
                    ),
                    Text(
                      "30% ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'sen',
                          color: Color(0xff6b63dd)),
                    ),
                    Text(
                      "Off",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'sen',
                          color: Color(0xff262626)),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: _knowMoreBtn(),
              )
            ],
          ),
        )
      ],
    ),
  );
}

_knowMoreBtn() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 25),
        child: SizedBox(
          width: 195,
          height: 60,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(30.0)),
              ),
            ),
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) {
              //   return const HomePage();
              // }));
            },
            child: const Text(
              "Know More",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      )
    ],
  );
}
