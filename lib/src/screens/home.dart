import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodappcourse/src/commons.dart';
import 'package:foodappcourse/src/modules/featured_products.dart';
import 'package:foodappcourse/src/widgets/CustomText.dart';
import 'package:foodappcourse/src/widgets/bottom_navigation_icons.dart';
import 'package:foodappcourse/src/widgets/categories.dart';
import 'package:foodappcourse/src/widgets/small_floating_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "¿Que se te antoja comer hoy?",
                    size: 18,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: grey[300], offset: Offset(1, 1), blurRadius: 4)
                ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Busca tu comida o restaurante",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Favoritos",
                size: 20,
                color: grey,
              ),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Popular",
                size: 20,
                color: grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("images/tacos.jpg")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmallButton(Icons.favorite),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(2),
                                  child: Icon(Icons.star,
                                      color: Colors.yellow[900], size: 20),
                                ),
                                Text("4.5")
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.5),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.3),
                                Colors.black.withOpacity(0.2),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.05),
                                Colors.black.withOpacity(0.025),
                              ],
                            ),
                          ),
                        )),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: "Descripcion \n",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              TextSpan(
                                text: "Lugar de venta \n",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              )
                            ]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "\$Precio \n",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w300,
                                    color: white))
                          ], style: TextStyle(color: black))),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        color: white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BottomNavIcon(
                image: "home2.png",
                name: "Inicio",
              ),
              BottomNavIcon(
                image: "home2.png",
                name: "Inicio",
              ),
              BottomNavIcon(
                image: "home2.png",
                name: "Inicio",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
