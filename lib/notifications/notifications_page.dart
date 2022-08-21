import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class notificationPg extends StatefulWidget {
  const notificationPg({Key? key}) : super(key: key);

  @override
  State<notificationPg> createState() => _notificationPgState();
}

class _notificationPgState extends State<notificationPg> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
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
            // new nofications content start
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(18),
                    child: Text(
                      "Yeni",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 110,
                    padding: EdgeInsets.only(left: 7, right: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          child: ClipOval(
                            child: Container(
                              width: 80,
                              height: 80,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://listelist.com/wp-content/uploads/2019/02/her-tiklamada.jpg",
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 110,
                            padding: EdgeInsets.only(
                                left: 5, right: 5, bottom: 5, top: 10),
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: 'Umut Aytekin',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          ' senin paylaşmış olduğun gönderiyi beğendi!'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 18,
                          padding: EdgeInsets.only(top: 10),
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                                "assets/images/app_icons/post_icons/icons8-ellipsis-60.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 110,
                    padding: EdgeInsets.only(left: 7, right: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          child: ClipOval(
                            child: Container(
                              width: 80,
                              height: 80,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 110,
                            padding: EdgeInsets.only(
                                left: 5, right: 5, bottom: 5, top: 10),
                            child: RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: 'Çağla Demir',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text:
                                          ' senin paylaşmış olduğun gönderiye yorum yaptı'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 18,
                          padding: EdgeInsets.only(top: 10),
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                                "assets/images/app_icons/post_icons/icons8-ellipsis-60.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // new friends request content start
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(18),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            "Arkadaşlık İstekleri",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Tümünü Gör",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 110,
                    padding: EdgeInsets.only(left: 7, right: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          child: ClipOval(
                            child: Container(
                              width: 80,
                              height: 80,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://this-person-does-not-exist.com/img/avatar-dd5230538dd9fb74d19ae9e8d12c4603.jpg",
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 110,
                            padding: EdgeInsets.only(
                                left: 5, right: 5, bottom: 5, top: 10),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: RichText(
                                    text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: 'Zeynep Gül',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text:
                                                ' sana arkadaşlık isteği gönderdi.'),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    width: double.infinity,
                                    height: 40,
                                    child: Row(
                                      children: <Widget>[
                                        Flexible(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                            ),
                                            child: Text(
                                              "Onayla",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                            ),
                                            child: Text(
                                              "Sil",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
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
                        ),
                        Container(
                          width: 18,
                          padding: EdgeInsets.only(top: 10),
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                                "assets/images/app_icons/post_icons/icons8-ellipsis-60.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 110,
                    padding: EdgeInsets.only(left: 7, right: 10),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 80,
                          alignment: Alignment.center,
                          child: ClipOval(
                            child: Container(
                              width: 80,
                              height: 80,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://this-person-does-not-exist.com/img/avatar-7e90a3700f4d42cb6130bc8975f70378.jpg",
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 110,
                            padding: EdgeInsets.only(
                                left: 5, right: 5, bottom: 5, top: 10),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: RichText(
                                    text: TextSpan(
                                      style: DefaultTextStyle.of(context).style,
                                      children: const <TextSpan>[
                                        TextSpan(
                                            text: 'Hasan Yılmaz',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        TextSpan(
                                            text:
                                                ' sana arkadaşlık isteği gönderdi.'),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    width: double.infinity,
                                    height: 40,
                                    child: Row(
                                      children: <Widget>[
                                        Flexible(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                            ),
                                            child: Text(
                                              "Onayla",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Container(
                                            alignment: Alignment.center,
                                            height: 40,
                                            margin: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(4)),
                                            ),
                                            child: Text(
                                              "Sil",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
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
                        ),
                        Container(
                          width: 18,
                          padding: EdgeInsets.only(top: 10),
                          alignment: Alignment.topCenter,
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                                "assets/images/app_icons/post_icons/icons8-ellipsis-60.png"),
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
  }
}
