import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  State<HomeComponent> createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(15),
      child: ListView(
        children: [
          Container(
            height: height - 98,
            padding: width >= 700
                ? EdgeInsets.only(top: 50)
                : EdgeInsets.only(top: 5),
            child: Flex(
              mainAxisSize: MainAxisSize.max,
              direction: width >= 700 ? Axis.horizontal : Axis.vertical,
              children: [
                Padding(
                  padding: width >= 700
                      ? EdgeInsets.only(top: 50)
                      : EdgeInsets.only(top: 10),
                  child: Flex(
                    mainAxisSize: MainAxisSize.max,
                    direction: width >= 700 ? Axis.vertical : Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Flex(
                          mainAxisSize: MainAxisSize.max,
                          direction:
                              width >= 700 ? Axis.horizontal : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.resolveWith<
                                      OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100.0));
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  elevation:
                                      MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {},
                                child: const FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.white,
                                  size: 20,
                                  semanticLabel: "Facebook",
                                )),
                            SizedBox(
                              width: 5,
                              height: 5,
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.resolveWith<
                                      OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100.0));
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.black),
                                  elevation:
                                      MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {},
                                child: const FaIcon(
                                  FontAwesomeIcons.github,
                                  color: Colors.white,
                                  size: 20,
                                  semanticLabel: "GitHub",
                                )),
                            SizedBox(
                              width: 5,
                              height: 5,
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.resolveWith<
                                      OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100.0));
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  elevation:
                                      MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {},
                                child: const FaIcon(
                                  FontAwesomeIcons.linkedinIn,
                                  color: Colors.white,
                                  size: 20,
                                  semanticLabel: "LinkedIn",
                                )),
                            SizedBox(
                              width: 5,
                              height: 5,
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.resolveWith<
                                      OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100.0));
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.green),
                                  elevation:
                                      MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {},
                                child: const FaIcon(
                                  FontAwesomeIcons.hackerrank,
                                  color: Colors.white,
                                  size: 20,
                                  semanticLabel: "HackerRank",
                                )),
                            SizedBox(
                              width: 5,
                              height: 5,
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.resolveWith<
                                      OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100.0));
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.red),
                                  elevation:
                                      MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {},
                                child: const FaIcon(
                                  FontAwesomeIcons.youtube,
                                  color: Colors.white,
                                  size: 20,
                                  semanticLabel: "Youtube",
                                )),
                            SizedBox(
                              width: 5,
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    const Text(
                                      "I'm ",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    DefaultTextStyle(
                                      style: const TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.bold
                                          //fontFamily: 'Horizon',
                                          ),
                                      child: AnimatedTextKit(
                                          isRepeatingAnimation: true,
                                          animatedTexts: [
                                            ScaleAnimatedText('Toufik',
                                                duration: Duration(
                                                    milliseconds: 5000)),
                                            ScaleAnimatedText('Lamghari',
                                                duration: Duration(
                                                    milliseconds: 5000)),
                                          ]),
                                    ),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),
                                padding: const EdgeInsets.only(
                                    top: 30, left: 5, right: 10, bottom: 40),
                                width:
                                    width >= 700 ? width / 2 - 80 : width - 120,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width:
                                    width >= 700 ? width / 2 - 80 : width - 150,
                                child: DefaultTextStyle(
                                  style: const TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Agne',
                                      color: Colors.indigoAccent),
                                  child: AnimatedTextKit(
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                          'Enthusiastic Java and Flutter Developer 😎',
                                          speed: Duration(milliseconds: 50),
                                          textAlign: TextAlign.center),
                                      TypewriterAnimatedText('Full stack Dev',
                                          speed: Duration(milliseconds: 50),
                                          textAlign: TextAlign.center),
                                      TypewriterAnimatedText(
                                          'Mobile Developer 📱',
                                          speed: Duration(milliseconds: 50),
                                          textAlign: TextAlign.center),
                                      TypewriterAnimatedText('Web Developer 🌐',
                                          speed: Duration(milliseconds: 50),
                                          textAlign: TextAlign.center),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            width: 20,
                          ),
                          Flex(
                            mainAxisAlignment: MainAxisAlignment.center,
                            direction:
                                width >= 400 ? Axis.horizontal : Axis.vertical,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                      const EdgeInsets.symmetric(
                                          horizontal: 25.0, vertical: 13.0)),
                                  shape: MaterialStateProperty.resolveWith<
                                      OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100.0));
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xFF1f2235)),
                                  elevation:
                                      MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Hire Me",
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                                height: 4,
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all<
                                          EdgeInsetsGeometry>(
                                      const EdgeInsets.symmetric(
                                          horizontal: 25.0, vertical: 13.0)),
                                  shape: MaterialStateProperty.resolveWith<
                                      OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100.0));
                                  }),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.deepOrange),
                                  elevation:
                                      MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Download CV",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 10,
                ),
                Column(
                  children: [
                    Image.asset("assets/pic.jpg",
                        width: width >= 700 ? width / 2 - 40 : width - 50),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
