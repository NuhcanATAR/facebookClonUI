import 'package:flutter/material.dart';

// yönlendirme sayfa adresleri

import 'package:facebook_clon_app/flows/flows_page.dart';
import 'package:facebook_clon_app/home/home_page.dart';
import 'package:facebook_clon_app/marketplace/marketplace_page.dart';
import 'package:facebook_clon_app/menu/menu_page.dart';
import 'package:facebook_clon_app/notifications/notifications_page.dart';

void main() {
  runApp(appRoutersListPg());
}

class appRoutersListPg extends StatelessWidget {
  const appRoutersListPg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/routers",
      routes: {
        "/routers": (context) => routersPg(),
        "/homePage": (context) => homePg(),
        "/marketPlace": (context) => marketplacePg(),
        "/flows": (context) => flowsPg(),
        "/notifications": (context) => notificationPg(),
        "/menu": (context) => menuPg(),
      },
      home: routersPg(),
    );
  }
}

class routersPg extends StatefulWidget {
  const routersPg({Key? key}) : super(key: key);

  @override
  State<routersPg> createState() => _routersPgState();
}

class _routersPgState extends State<routersPg> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => homePg()),
            (Route<dynamic> route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                          "assets/images/facebook_logo/f_logo_RGB-Blue_58.png"),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "from",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/facebook_logo/meta-g8003afd09_640.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
