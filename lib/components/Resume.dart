import 'package:flutter/material.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  late String title="Education";
  late int selected=0;

  initState(){
    title="Education";
    selected=0;
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(width);
    return Container(
      height: height - 100,
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              "My Resume",
              style: TextStyle(
                  color: Color(0xFF1f2235),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 7,
            ),
            Flex(
              mainAxisAlignment: MainAxisAlignment.center,
              direction: width >= 411 ? Axis.horizontal : Axis.vertical,
              children: [
                SizedBox(
                  height: 5.0,
                  width: width * 0.3,
                  child: Container(
                    // margin:  const EdgeInsetsDirectional.only(),
                    height: 5.0,
                    color: Colors.deepOrange,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  "  Why choose me ?  ",
                  style: TextStyle(
                      color: Color(0xFF1f2235),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 7,
                ),
                SizedBox(
                  height: 5.0,
                  width: width * 0.25,
                  child: Container(
                    //margin:  const EdgeInsetsDirectional.only( ),
                    height: 5.0,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.only(left: 7, right: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flex(
                        direction: Axis.vertical,
                          children: [
                        Container(
                          height: height * 0.7-10,
                          //color: Colors.black,
                          width: width * 0.15,
                          child: Flex(
                            direction: Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0)),
                                  shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: selected == 0? Colors.deepOrange: Colors.black,
                                        width: 2.0,
                                      ),
                                      borderRadius:
                                        BorderRadius.circular(90.0));
                                  }),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  elevation:
                                  MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selected = 0;
                                    title="Education";
                                  });
                                },
                                child: Icon(Icons.school,size: 25,color: selected == 0? Colors.deepOrange: Colors.black,),

                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0)),
                                  shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: selected == 1? Colors.deepOrange: Colors.black,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(90.0));
                                  }),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  elevation:
                                  MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selected = 1;
                                    title="Experience";
                                  });
                                },
                                child:  Icon(Icons.work_history,size: 25,color: selected == 1? Colors.deepOrange: Colors.black,),

                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0)),
                                  shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: selected == 2? Colors.deepOrange: Colors.black,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(90.0));
                                  }),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  elevation:
                                  MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selected = 2;
                                    title="Skills";
                                  });
                                },
                                child:  Icon(Icons.code,size: 25,color: selected == 2? Colors.deepOrange: Colors.black,),

                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0)),
                                  shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: selected == 3? Colors.deepOrange: Colors.black,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(90.0));
                                  }),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  elevation:
                                  MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selected = 3;
                                    title="Projects";
                                  });
                                },
                                child: Icon(Icons.list,size: 25,color: selected == 3? Colors.deepOrange: Colors.black,),

                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0)),
                                  shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                                    return RoundedRectangleBorder(
                                        side: BorderSide(
                                          color: selected == 4? Colors.deepOrange: Colors.black,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(90.0));
                                  }),
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  elevation:
                                  MaterialStateProperty.all<double?>(6),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selected = 4;
                                    title="Interests";
                                  });
                                },
                                child: Icon(Icons.interests,size: 25,color: selected == 4? Colors.deepOrange: Colors.black,),

                              ),
                            ],
                          ),
                        )
                      ]),
                      Column(children: [
                        Container(
                          height: height * 0.7-10,
                          color: Colors.white24,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: width * 0.8,
                                height: height* 0.1,
                                //color: Colors.black,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(title, style: const TextStyle(color: Colors.deepOrange,fontSize: 20, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              Container(
                                height: height * 0.5,
                                width: width * 0.77,
                                color: Colors.black,
                                child: Column(
                                  children: [

                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
