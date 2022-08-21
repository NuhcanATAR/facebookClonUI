import 'package:cached_network_image/cached_network_image.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

import 'package:flutter/material.dart';

// yönlendirme sayfa adresleri

import 'package:facebook_clon_app/flows/flows_page.dart';
import 'package:facebook_clon_app/marketplace/marketplace_page.dart';
import 'package:facebook_clon_app/menu/menu_page.dart';
import 'package:facebook_clon_app/notifications/notifications_page.dart';

class homePg extends StatefulWidget {
  const homePg({Key? key}) : super(key: key);

  @override
  State<homePg> createState() => _homePgState();
}

class _homePgState extends State<homePg> {
  final double _minValue = 8.0;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 6,
        child: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) => [
              SliverPadding(
                padding: EdgeInsets.all(_minValue * 1),
                sliver: SliverToBoxAdapter(
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "facebook",
                            style: TextStyle(
                              color: Color.fromARGB(255, 31, 134, 218),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(bottom: 5, top: 5),
                            child: ClipOval(
                              child: Container(
                                width: 42,
                                color: Colors.grey.withOpacity(0.2),
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  margin: EdgeInsets.all(12),
                                  child: Image.asset(
                                      "assets/images/app_icons/icons8-search-50.png"),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(bottom: 5, top: 5),
                            child: ClipOval(
                              child: Container(
                                width: 42,
                                color: Colors.grey.withOpacity(0.2),
                                child: Container(
                                  width: 25,
                                  height: 25,
                                  margin: EdgeInsets.all(12),
                                  child: Image.asset(
                                      "assets/images/app_icons/icons8-facebook-messenger-50.png"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SliverAppBar(
                backgroundColor: Colors.white,
                pinned: true,
                leading: Container(),
                titleSpacing: 0.0,
                toolbarHeight: 2,
                bottom: TabBar(tabs: [
                  Tab(
                    child: Container(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                          "assets/images/app_icons/tabBaricons/icons8-home-48.png"),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                          "assets/images/app_icons/tabBaricons/icons8-tv-show-50.png"),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                          "assets/images/app_icons/tabBaricons/icons8-market-48.png"),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                          "assets/images/app_icons/tabBaricons/icons8-page-properties-report-50.png"),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                          "assets/images/app_icons/tabBaricons/icons8-notification-50.png"),
                    ),
                  ),
                  Tab(
                    child: Container(
                      width: 25,
                      height: 25,
                      child: Image.asset(
                          "assets/images/app_icons/tabBaricons/icons8-menu-60.png"),
                    ),
                  ),
                ]),
              ),
            ],
            body: TabBarView(
              children: [
                homeTabContent,
                buildWatchContent,
                buildMarketPlaceContent,
                buildFlowsListContent,
                buildNoficationsContent,
                buildMenuContent,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get homeTabContent => Container(
        width: double.infinity,
        color: Colors.grey.withOpacity(0.5),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // user post create content start
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: ClipOval(
                              child: Container(
                                width: 40,
                                height: 40,
                                color: Colors.grey,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://store.donanimhaber.com/2a/71/96/2a7196fa4e85b977760a7f33586ee603.jpg",
                                  fit: BoxFit.cover,
                                  progressIndicatorBuilder:
                                      (context, url, downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 40,
                                margin: EdgeInsets.only(left: 5),
                                padding: EdgeInsets.only(left: 20, right: 4),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                ),
                                child: Text(
                                  "Ne Düşünüyorsun?",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            margin: EdgeInsets.all(8),
                            child: Image.asset(
                                "assets/images/app_icons/postAddicons/icons8-image-gallery-48.png"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      margin: EdgeInsets.only(top: 15),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Colors.white),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                        "assets/images/app_icons/postAddicons/icons8-instagram-reels-50.png"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Reels Videosu",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Colors.white),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 23,
                                    height: 23,
                                    child: Image.asset(
                                        "assets/images/app_icons/postAddicons/icons8-people-64.png"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Grup",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  color: Colors.white),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 23,
                                    height: 23,
                                    child: Image.asset(
                                        "assets/images/app_icons/postAddicons/icons8-live-video-on-60.png"),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Canlı",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //user other user story list content start
              Container(
                width: double.infinity,
                height: 260,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(bottom: 8),
                color: Colors.white,
                child: ContainedTabBarView(
                  tabs: [
                    Text(
                      "Hikayeler",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(
                      "Reels",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                  views: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 110,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        topRight: Radius.circular(4),
                                      ),
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://store.donanimhaber.com/2a/71/96/2a7196fa4e85b977760a7f33586ee603.jpg",
                                      fit: BoxFit.contain,
                                      progressIndicatorBuilder: (context, url,
                                              downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                      errorWidget: (context, url, error) =>
                                          Icon(Icons.error),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 70,
                                    color: Colors.white,
                                    alignment: Alignment.bottomCenter,
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      "Hikaye Olu...",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 95,
                                  left: 35,
                                  right: 35,
                                  bottom: 50,
                                  child: ClipOval(
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      color: Colors.white,
                                      alignment: Alignment.center,
                                      child: ClipOval(
                                        child: Container(
                                          width: 33,
                                          height: 33,
                                          color: Colors.blue,
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 110,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf7LR-fTlFcGdVJo5JeQuVwqGE19bSuB_VHg&usqp=CAU",
                                    fit: BoxFit.cover,
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 1.4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(125)),
                                    ),
                                    alignment: Alignment.center,
                                    child: ClipOval(
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
                                          fit: BoxFit.cover,
                                          progressIndicatorBuilder: (context,
                                                  url, downloadProgress) =>
                                              CircularProgressIndicator(
                                                  value: downloadProgress
                                                      .progress),
                                          errorWidget: (context, url, error) =>
                                              Icon(Icons.error),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 5,
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    width: 110,
                                    child: Text(
                                      "Çağla Demir",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 110,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://i.pinimg.com/736x/f3/a9/56/f3a9564ea5b99d84c00c733e72ba7cc1--tree-wallpaper-wallpaper-iphone.jpg",
                                    fit: BoxFit.cover,
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 1.4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(125)),
                                    ),
                                    alignment: Alignment.center,
                                    child: ClipOval(
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              "https://imgrosetta.mynet.com.tr/file/12310939/12310939-728xauto.jpg",
                                          fit: BoxFit.cover,
                                          progressIndicatorBuilder: (context,
                                                  url, downloadProgress) =>
                                              CircularProgressIndicator(
                                                  value: downloadProgress
                                                      .progress),
                                          errorWidget: (context, url, error) =>
                                              Icon(Icons.error),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 5,
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    width: 110,
                                    child: Text(
                                      "Nihal Çağlayan",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 110,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://www.nawpic.com/media/2020/summer-aesthetic-wallpaper-iphone-nawpic-15.jpg",
                                    fit: BoxFit.cover,
                                    progressIndicatorBuilder: (context, url,
                                            downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: 38,
                                    height: 38,
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 1.4),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(125)),
                                    ),
                                    alignment: Alignment.center,
                                    child: ClipOval(
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                        child: CachedNetworkImage(
                                          imageUrl:
                                              "https://listelist.com/wp-content/uploads/2019/02/her-tiklamada.jpg",
                                          fit: BoxFit.cover,
                                          progressIndicatorBuilder: (context,
                                                  url, downloadProgress) =>
                                              CircularProgressIndicator(
                                                  value: downloadProgress
                                                      .progress),
                                          errorWidget: (context, url, error) =>
                                              Icon(Icons.error),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 5,
                                  child: Container(
                                    margin: EdgeInsets.all(5),
                                    width: 110,
                                    child: Text(
                                      "Umut Aytekin",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 250,
                      color: Colors.lightGreen,
                    ),
                  ],
                  onChange: (index) => print("Geçiş Yapıldı: ${index}"),
                ),
              ),
              // user other user post list content start
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15, bottom: 10),
                padding: EdgeInsets.only(top: 5, bottom: 8),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    // post top content start
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              width: 47,
                              height: 47,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://imgrosetta.mynet.com.tr/file/12310939/12310939-728xauto.jpg",
                                fit: BoxFit.cover,
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              width: 150,
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 150,
                                    child: Text(
                                      "Nihal Çağlayan",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    width: 150,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "8d . ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Container(
                                          width: 15,
                                          height: 15,
                                          child: Image.asset(
                                              "assets/images/app_icons/post_icons/icons8-earth-50.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                        "assets/images/app_icons/post_icons/icons8-ellipsis-60.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // post body content start
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://cdn.pixabay.com/photo/2016/02/10/21/59/landscape-1192669__480.jpg",
                        fit: BoxFit.cover,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    value: downloadProgress.progress),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    // post footer content start
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(4),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              height: 40,
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset(
                                        "assets/images/app_icons/post_icons/removebg-previewlike.png"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "16",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              height: 40,
                              alignment: Alignment.centerRight,
                              child: Text(
                                "5 Yorum",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                      ),
                      padding: EdgeInsets.only(left: 25),
                      alignment: Alignment.center,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 25,
                                      height: 25,
                                      child: Image.asset(
                                          "assets/images/app_icons/post_icons/icons8-facebook-like-48.png"),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Beğen",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset(
                                          "assets/images/app_icons/post_icons/icons8-comments-50.png"),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Yorum",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset(
                                          "assets/images/app_icons/post_icons/icons8-share-48.png"),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Paylaş",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // people you may know
              Container(
                width: double.infinity,
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(bottom: 8),
                child: Column(
                  children: <Widget>[
                    // top content start
                    Container(
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "Tanıyor Olabileceğin Kişiler",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            margin: EdgeInsets.only(right: 10),
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                  "assets/images/app_icons/post_icons/icons8-ellipsis-60.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // body content start
                    Container(
                      width: double.infinity,
                      height: 380,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            width: 220,
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.grey, width: 0.7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 220,
                                  height: 250,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://st.depositphotos.com/1008939/1926/i/950/depositphotos_19266867-stock-photo-happy.jpg",
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                ),
                                Container(
                                  width: 220,
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 220,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Hakan Demir",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        width: 220,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Galatasaray'da çalışıyor",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 220,
                                        padding: EdgeInsets.only(top: 15),
                                        child: Row(
                                          children: <Widget>[
                                            Flexible(
                                              fit: FlexFit.tight,
                                              flex: 2,
                                              child: Container(
                                                padding: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(4),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: <Widget>[
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Container(
                                                      width: 17,
                                                      height: 17,
                                                      child: Image.asset(
                                                          "assets/images/app_icons/people_you_mayKnow_icons/icons8-add-user-48.png"),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "Arkadaşı Ekle",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13.5,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              fit: FlexFit.tight,
                                              flex: 1,
                                              child: Container(
                                                padding: EdgeInsets.all(8),
                                                margin:
                                                    EdgeInsets.only(left: 4),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey
                                                      .withOpacity(0.4),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(4),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Kaldır",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 220,
                            margin: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.grey, width: 0.7),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 220,
                                  height: 250,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://cdn.pixabay.com/photo/2017/02/23/11/48/photo-model-2091993_960_720.jpg",
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                ),
                                Container(
                                  width: 220,
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 220,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Cansu Özkan",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Container(
                                        width: 220,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Kendi İşinde çalışıyor",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 220,
                                        padding: EdgeInsets.only(top: 15),
                                        child: Row(
                                          children: <Widget>[
                                            Flexible(
                                              fit: FlexFit.tight,
                                              flex: 2,
                                              child: Container(
                                                padding: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(4),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: <Widget>[
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Container(
                                                      width: 17,
                                                      height: 17,
                                                      child: Image.asset(
                                                          "assets/images/app_icons/people_you_mayKnow_icons/icons8-add-user-48.png"),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      "Arkadaşı Ekle",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13.5,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              fit: FlexFit.tight,
                                              flex: 1,
                                              child: Container(
                                                padding: EdgeInsets.all(8),
                                                margin:
                                                    EdgeInsets.only(left: 4),
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey
                                                      .withOpacity(0.4),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(4),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Kaldır",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // footer content start
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 105,
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Tümünü Gör",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // user other user post list content start
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15, bottom: 10),
                padding: EdgeInsets.only(top: 5, bottom: 8),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    // post top content start
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              width: 47,
                              height: 47,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
                                fit: BoxFit.cover,
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              width: 150,
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 150,
                                    child: Text(
                                      "Çağla Demir",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    width: 150,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "14s . ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Container(
                                          width: 15,
                                          height: 15,
                                          child: Image.asset(
                                              "assets/images/app_icons/post_icons/icons8-earth-50.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                        "assets/images/app_icons/post_icons/icons8-ellipsis-60.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // post body content start
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://assets.enuygun.com/media/lib/570x400/uploads/image/1764.jpeg",
                        fit: BoxFit.cover,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    value: downloadProgress.progress),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    // post footer content start
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(4),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              height: 40,
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset(
                                        "assets/images/app_icons/post_icons/removebg-previewlike.png"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "150",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              height: 40,
                              alignment: Alignment.centerRight,
                              child: Text(
                                "78 Yorum",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                      ),
                      padding: EdgeInsets.only(left: 25),
                      alignment: Alignment.center,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 25,
                                      height: 25,
                                      child: Image.asset(
                                          "assets/images/app_icons/post_icons/icons8-facebook-like-48.png"),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Beğen",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset(
                                          "assets/images/app_icons/post_icons/icons8-comments-50.png"),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Yorum",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset(
                                          "assets/images/app_icons/post_icons/icons8-share-48.png"),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Paylaş",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15, bottom: 10),
                padding: EdgeInsets.only(top: 5, bottom: 8),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    // post top content start
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              width: 47,
                              height: 47,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://listelist.com/wp-content/uploads/2019/02/her-tiklamada.jpg",
                                fit: BoxFit.cover,
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Container(
                              width: 150,
                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 150,
                                    child: Text(
                                      "Umut Aytekin",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    width: 150,
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "11s . ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Container(
                                          width: 15,
                                          height: 15,
                                          child: Image.asset(
                                              "assets/images/app_icons/post_icons/icons8-earth-50.png"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    child: Image.asset(
                                        "assets/images/app_icons/post_icons/icons8-ellipsis-60.png"),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.black54,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // post body content start
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Lorem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://www.arthipo.com/artblog/wp-content/uploads/2017/01/yagliboya-kar-manzarasi-nasil-yapilir-kar-resmi-nasil-cizilir-2.jpg",
                        fit: BoxFit.cover,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    value: downloadProgress.progress),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    // post footer content start
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(4),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              height: 40,
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 25,
                                    height: 25,
                                    child: Image.asset(
                                        "assets/images/app_icons/post_icons/removebg-previewlike.png"),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "273",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              height: 40,
                              alignment: Alignment.centerRight,
                              child: Text(
                                "159 Yorum",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5),
                        ),
                      ),
                      padding: EdgeInsets.only(left: 25),
                      alignment: Alignment.center,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 25,
                                      height: 25,
                                      child: Image.asset(
                                          "assets/images/app_icons/post_icons/icons8-facebook-like-48.png"),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Beğen",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset(
                                          "assets/images/app_icons/post_icons/icons8-comments-50.png"),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Yorum",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 20,
                                      height: 20,
                                      child: Image.asset(
                                          "assets/images/app_icons/post_icons/icons8-share-48.png"),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Paylaş",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Widget get buildWatchContent => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
      );

  Widget get buildMarketPlaceContent => marketplacePg();

  Widget get buildFlowsListContent => flowsPg();

  Widget get buildNoficationsContent => notificationPg();

  Widget get buildMenuContent => menuPg();
}
