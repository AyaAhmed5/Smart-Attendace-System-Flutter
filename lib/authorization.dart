// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class autho extends StatelessWidget {
  const autho({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 120, 143, 185),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              color: Color.fromARGB(255, 119, 153, 177),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "choice for Authorization",
                    style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Image.asset(
                    "assets/images/images-removebg-preview.png",
                    width: 500,
                    height: 250,
                  ),

                  SizedBox(
                    height: 200,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,"/finger");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 39, 112, 176)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "Finger Print",
                      style: TextStyle(
                          fontSize: 17,
                          color: const Color.fromARGB(255, 252, 252, 252)),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,  "/face");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 39, 112, 176)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "Face recogonation",
                      style: TextStyle(
                          fontSize: 17,
                          color: const Color.fromARGB(255, 252, 252, 252)),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: 80,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: 75,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
