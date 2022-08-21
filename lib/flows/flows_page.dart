import 'package:cached_network_image/cached_network_image.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

class flowsPg extends StatefulWidget {
  const flowsPg({Key? key}) : super(key: key);

  @override
  State<flowsPg> createState() => _flowsPgState();
}

class _flowsPgState extends State<flowsPg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey.withOpacity(0.5),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Akışlar",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: ClipOval(
                            child: Container(
                              width: 37,
                              height: 37,
                              color: Colors.grey.withOpacity(0.3),
                              alignment: Alignment.center,
                              child: Container(
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    "assets/images/app_icons/icons8-search-50.png"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                    child: ContainedTabBarView(
                      tabs: [
                        Text(
                          "Tümü",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Favoriler",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Arkadaşlar",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Gruplar",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                      views: [
                        buildAllOptionContent,
                        buildFavorityOptionContent,
                        buildFriendsOptionContent,
                        buildGroupsOptionContent,
                      ],
                      onChange: (index) => print(index),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get buildAllOptionContent => Container(
        width: double.infinity,
        color: Colors.grey.withOpacity(0.5),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                              width: 40,
                              height: 40,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://seeklogo.com/images/G/google-2015-logo-65BBD07B01-seeklogo.com.png",
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
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Google",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Container(
                                          width: 13,
                                          height: 13,
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://istalya.com/image/cache/catalog/resimler/Varlık%201-1080x1080w.png",
                                            fit: BoxFit.cover,
                                            progressIndicatorBuilder: (context,
                                                    url, downloadProgress) =>
                                                CircularProgressIndicator(
                                                    value: downloadProgress
                                                        .progress),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                        ),
                                      ],
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
                            "https://static.abc.es/media/economia/2019/01/08/google-sede-california-kA9F--620x349@abc.jpg",
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
                              width: 40,
                              height: 40,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/800px-Facebook_Logo_%282019%29.png",
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
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Facebook",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 6,
                                        ),
                                        Container(
                                          width: 13,
                                          height: 13,
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://istalya.com/image/cache/catalog/resimler/Varlık%201-1080x1080w.png",
                                            fit: BoxFit.cover,
                                            progressIndicatorBuilder: (context,
                                                    url, downloadProgress) =>
                                                CircularProgressIndicator(
                                                    value: downloadProgress
                                                        .progress),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                        ),
                                      ],
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
                                          "18s . ",
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
                            "https://i2.milimaj.com/i/milliyet/75/0x410/5e147b9255428318c89f3b40.jpg",
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
            ],
          ),
        ),
      );

  Widget get buildFavorityOptionContent => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.withOpacity(0.5),
      );

  Widget get buildFriendsOptionContent => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.withOpacity(0.5),
      );

  Widget get buildGroupsOptionContent => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.withOpacity(0.5),
      );
}
