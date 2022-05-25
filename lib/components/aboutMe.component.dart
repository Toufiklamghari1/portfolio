

import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(width);
    return Container(
      height: height - 100,
      child: Center(
        child: Flex(
          direction: Axis.vertical,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Text(
              "About Me",
              style: TextStyle(
                  color: Color(0xFF1f2235),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Flex(
              mainAxisAlignment: MainAxisAlignment.center,
              direction: width>= 411 ? Axis.horizontal : Axis.vertical,
              children: [
                 SizedBox(
                  height: 5.0,
                  width: width * 0.3,
                  child:  Container(
                   // margin:  const EdgeInsetsDirectional.only(),
                    height:5.0,
                    color: Colors.deepOrange,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "  Why choose me ?  ",
                  style: TextStyle(
                      color: Color(0xFF1f2235),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 5.0,
                  width: width * 0.25,
                  child:  Container(
                    //margin:  const EdgeInsetsDirectional.only( ),
                    height:5.0,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: height*0.5,
              width: width * 0.9,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(color: Colors.grey, width: 3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                    Text("Who am I ?",
                        style: TextStyle(
                            color: Color(0xFF1f2235),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 15,
                    ),
                  Text("I am a FullStack Developer."
                      " My specialization is in Mobile and Web Development."
                      " My technologies stack includes JAVA,"
                      " Spring Boot,Swagger, Dart,"
                      " Flutter, JavaScript, React Js,"
                      " MongoDB, Mysql, Firebase, "
                      "Python, SckitLearn."),
                  SizedBox(
                    height: 20,
                  ),
                  Text("What's can I do For you ?",
                      style: TextStyle(
                          color: Color(0xFF1f2235),
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("I can help you to build your Mobile Application"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("I can help you to build your Web Application"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("I can help you to build your Desktop Application"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("I can help you to build your webSite"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Building your Rest API"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("I can help you to build your Database"),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Fixing your bugs"),

                ],
              ),
            ),
            Flex(direction: width>=410? Axis.horizontal : Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height:width>=410? height*0.1: 20,
                  width: width*0.1,
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
                  height: 10,
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

                SizedBox(
                  width: width*0.1,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }

}
