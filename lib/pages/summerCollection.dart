import 'package:clothing_ui/pages/secondPage.dart';
import 'package:flutter/material.dart';

class SummerCollection extends StatefulWidget {
  const SummerCollection({Key? key}) : super(key: key);

  @override
  _SummerCollectionState createState() => _SummerCollectionState();
}

class _SummerCollectionState extends State<SummerCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 50.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                child: const Icon(Icons.arrow_back, color: Colors.black),
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                  primary: Colors.white, // <-- Button color
                  onPrimary: Colors.red, // <-- Splash color
                ),
              ),
            ),
            _favoriteButton(),
            _cartButton(),
          ],
        ),
        Container(
          child: Stack(
            children: [
              _mainImage(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _bottomContainer(),
                ],
              ),
            ],
          ),
        ),
        Container()
      ],
    ));
  }
}

_favoriteButton() {
  return Padding(
    padding: const EdgeInsets.only(left: 165.0, top: 50.0),
    child: ElevatedButton(
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const SecondPage()),
        // );
      },
      child: const Icon(Icons.favorite_border, color: Colors.black),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        primary: Colors.white, // <-- Button color
        onPrimary: Colors.red, // <-- Splash color
      ),
    ),
  );
}

_cartButton() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 0.0,
      top: 50.0,
    ),
    child: ElevatedButton(
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const SecondPage()),
        // );
      },
      child: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        primary: Colors.white, // <-- Button color
        onPrimary: Colors.red, // <-- Splash color
      ),
    ),
  );
}

_mainImage() {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            child:
                Image.asset("assets/images/thirdMain.png", fit: BoxFit.cover),
          ),
        )
      ],
    ),
  );
}

_bottomContainer() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 394, left: 60),
        child: Container(
          width: 340,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    _cropTop(),
                    _yellowButton(),
                    _purpleButton(),
                    _redButton()
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 270.0),
                child: Text(
                  "Size",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'sen',
                      color: Color(0xff262626)),
                ),
              ),
              Row(
                children: [
                  _sizeButtonWhiteXS(),
                  _sizeButtonWhiteS(),
                  _sizeButtonBlack(),
                  _sizeButtonWhiteL(),
                  _sizeButtonWhiteXL()
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _discount(),
                      _price(),
                      // Row(
                      //   children: [_discount()],
                      // ),
                      // Row(
                      //   children: [_price()],
                      // )
                    ],
                  ),
                  Column(
                    children: [_addToBagBtn()],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}

_cropTop() {
  return const Padding(
    padding: EdgeInsets.only(top: 0, left: 10),
    child: Text(
      "Crop Top",
      style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: 'sen',
          color: Color(0xff262626)),
    ),
  );
}

_yellowButton() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 100.0,
    ),
    child: Container(
      width: 25,
      height: 25,
      decoration:
          const BoxDecoration(color: Color(0xfffad56d), shape: BoxShape.circle),
    ),
  );
}

_purpleButton() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 10.0,
    ),
    child: Container(
      width: 25,
      height: 25,
      decoration:
          const BoxDecoration(color: Color(0xff6b63dd), shape: BoxShape.circle),
    ),
  );
}

_redButton() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 10.0,
    ),
    child: Container(
      width: 25,
      height: 25,
      decoration:
          const BoxDecoration(color: Color(0xffda1f00), shape: BoxShape.circle),
    ),
  );
}

_sizeButtonBlack() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 6.0,
    ),
    child: Stack(children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xff000000), borderRadius: BorderRadius.circular(12)),
      ),
      const Padding(
        padding: EdgeInsets.all(21.0),
        child: Text(
          "M",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: 'sen',
              color: Color(0xffffffff)),
        ),
      ),
    ]),
  );
}

_sizeButtonWhiteXS() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 6.0,
    ),
    child: Stack(children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xffffffff), borderRadius: BorderRadius.circular(12)),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 21.0, bottom: 21, left: 19.2),
        child: Text(
          "XS",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: 'sen',
              color: Color(0xff8399a9)),
        ),
      ),
    ]),
  );
}

_sizeButtonWhiteS() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 6.0,
    ),
    child: Stack(children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xffffffff), borderRadius: BorderRadius.circular(12)),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 21.0, bottom: 21, left: 25),
        child: Text(
          "S",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: 'sen',
              color: Color(0xff8399a9)),
        ),
      ),
    ]),
  );
}

_sizeButtonWhiteL() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 6.0,
    ),
    child: Stack(children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xffffffff), borderRadius: BorderRadius.circular(12)),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 21.0, bottom: 21, left: 24),
        child: Text(
          "L",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: 'sen',
              color: Color(0xff8399a9)),
        ),
      ),
    ]),
  );
}

_sizeButtonWhiteXL() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 6.0,
    ),
    child: Stack(children: [
      Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xffffffff), borderRadius: BorderRadius.circular(12)),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 21.0, bottom: 21, left: 18.5),
        child: Text(
          "XL",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontFamily: 'sen',
              color: Color(0xff8399a9)),
        ),
      ),
    ]),
  );
}

_discount() {
  return const Padding(
    padding: EdgeInsets.only(left: 10),
    child: Text(
      "30% off",
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          fontFamily: 'sen',
          color: Color(0xff6b63dd)),
    ),
  );
}

_price() {
  return Padding(
    padding: EdgeInsets.only(left: 10.0, top: 5),
    child: Row(
      children: const [
        Text(
          "\$58",
          style: TextStyle(
              decoration: TextDecoration.lineThrough,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontFamily: 'sen',
              color: Color(0xff8399a9)),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "\$55",
          style: TextStyle(
              decoration: TextDecoration.lineThrough,
              fontSize: 30,
              fontWeight: FontWeight.w700,
              fontFamily: 'sen',
              color: Color(0xff0da75f)),
        ),
      ],
    ),
  );
}

_addToBagBtn() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 25, left: 55),
        child: SizedBox(
          width: 165,
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
              "Add to Bag",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'sen',
              ),
            ),
          ),
        ),
      )
    ],
  );
}
