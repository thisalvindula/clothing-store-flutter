import 'package:clothing_ui/pages/secondPage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                child: Image.asset("assets/images/mainImage.png",
                    fit: BoxFit.cover),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _letYour(),
                _mainPageDescription(),
                const SizedBox(
                  height: 50.0,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: _getStartedBtn(context),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

_letYour() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.only(left: 20.0, top: 10.0),
        child: Text(
          "Let Your \nStyle Speak",
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.w700, fontFamily: 'sen'),
        ),
      )
    ],
  );
}

_mainPageDescription() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.only(left: 20.0, top: 30.0),
        child: Text(
          "Discover the latest trends in women \nfashion and explore your personality",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'sen',
              color: Color(0xff8399A9)),
        ),
      )
    ],
  );
}

_getStartedBtn(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 0.0),
        child: SizedBox(
          width: 200,
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
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SecondPage();
              }));
            },
            child: const Text(
              "Get Started",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      )
    ],
  );
}
