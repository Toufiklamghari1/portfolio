


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/Resume.dart';
import 'package:portfolio/components/aboutMe.component.dart';
import 'package:portfolio/components/home.component.dart';
import 'package:portfolio/widgets/drawer.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  var list = ["Home","About Me", "Projects", "Services"];
  var listView = [HomeComponent(),AboutMe(),Resume(),Text("data12")];

  var colors = [Colors.orange, Colors.blue, Colors.red, Colors.green];

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldkey,
      drawer: width <= 560 ? Drawer(
        child: Container(
          child: ListView(
            children: [
                TextButton(onPressed: (){
                  scrollToIndex(0);
                }, child: Text("Home")),
                SizedBox(width: 10.0,),
                TextButton(onPressed: (){
                  scrollToIndex(1);
                }, child: Text("About Me")),
                SizedBox(width: 10.0,),
                TextButton(onPressed: (){
                  scrollToIndex(2);
                }, child: Text("My Resume")),
                SizedBox(width: 10.0,),
                TextButton(onPressed: (){
                  scrollToIndex(3);
                }, child: Text("Services")),
                SizedBox(width: 10.0,),
                TextButton(onPressed: (){
                  scrollToIndex(4);
                }, child: Text("PortFolio")),
                SizedBox(width: 10.0,),
                TextButton(onPressed: (){}, child: Text("Hire Me")),
                SizedBox(width: 10.0,),
                TextButton(onPressed: (){}, child: Text("Sign in")),
                SizedBox(width: 10.0,),

            ],
          ),
        ),
      ): null,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 7,
        titleTextStyle: TextStyle(color: Colors.blue),
        leading: width <= 560 ? IconButton(icon: Icon(Icons.menu,color: Colors.deepPurpleAccent,), onPressed: () {
          _scaffoldkey.currentState?.openDrawer();
        },

        ) : null,
       centerTitle:  width <= 560 ? true : false,
        title: const Text("Lamghari",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 15),),
        actions: width >= 560 ?[
          TextButton(onPressed: (){
            scrollToIndex(0);
          }, child: Text("Home")),
          SizedBox(width: 10.0,),
          TextButton(onPressed: (){
            scrollToIndex(1);
          }, child: Text("About Me")),
          SizedBox(width: 10.0,),
          TextButton(onPressed: (){
            scrollToIndex(2);
          }, child: Text("My Resume")),
          SizedBox(width: 10.0,),
          TextButton(onPressed: (){
            scrollToIndex(3);
          }, child: Text("Services")),
          SizedBox(width: 10.0,),
          TextButton(onPressed: (){
            scrollToIndex(4);
          }, child: Text("PortFolio")),
          SizedBox(width: 10.0,),
          TextButton(onPressed: (){}, child: Text("Hire Me")),
          SizedBox(width: 10.0,),
          TextButton(onPressed: (){}, child: Text("Sign in")),
          SizedBox(width: 10.0,),

        ] : [
          TextButton(onPressed: (){}, child: Text("Sign in")),
        ],
      ),
      body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child : PageView(
                    scrollDirection: Axis.vertical,
                    pageSnapping: false,
                    controller: controller,
                    children: listView
                ),
              ),
            ],
          )
      ),
    );
  }


  void scrollToIndex(int index) {
    controller.animateToPage(index, duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }
}

