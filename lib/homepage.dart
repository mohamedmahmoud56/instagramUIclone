// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home_filled),
                iconSize: 25,
                color: currentpage == 0 ? Colors.pink : Colors.black,
                onPressed: () {
                  setState(() {
                    currentpage = 0;
                  });
                },
              ),
              IconButton(
                  color: currentpage == 1 ? Colors.pink : Colors.black,
                  onPressed: () {
                    setState(() {
                      currentpage = 1;
                    });
                  },
                  icon: Icon(
                    Icons.search,
                  ),
                  iconSize: 25),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentpage = 2;
                    });
                  },
                  color: currentpage == 2 ? Colors.pink : Colors.black,
                  icon: Icon(Icons.add_box_outlined),
                  iconSize: 25),
              IconButton(
                  onPressed: () {
                    setState(() {
                      currentpage = 3;
                    });
                  },
                  color: currentpage == 3 ? Colors.pink : Colors.black,
                  icon: Icon(Icons.ondemand_video),
                  iconSize: 25),
            ],
          ),
        ),
        //---------------------------AppBar---------------------------------------
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 50,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.favorite_outline_rounded,
              ),
            ),
            IconButton(
              onPressed: (() {}),
              icon: Icon(
                CupertinoIcons.bolt_horizontal_circle,
              ),
            ),
          ],
          shadowColor: null,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Text(
                'Instagram',
                style: GoogleFonts.allura(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
        //----------------stories----------------------
        body: Container(
          padding: EdgeInsets.zero,
          height: size.height,
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                    profilesstories.length,
                    (index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 37,
                              backgroundImage:
                                  AssetImage('images/stories/logo.png'),
                              child: CircleAvatar(
                                  radius: 33,
                                  backgroundImage: AssetImage(
                                    profilesstories[index],
                                  )),
                            ),
                            Divider(height: 5),
                            Text(
                              'Profile name',
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
                ),
                Divider(thickness: 0),
                //---------------------------posts------------------------
                Center(
                  child: Column(
                    children: List.generate(posts.length, (index2) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.zero,
                            width: double.infinity,
                            height: 50,
                            child: ListTile(
                              contentPadding: EdgeInsets.all(7),
                              minVerticalPadding: 0,
                              enabled: false,
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.more_vert_rounded,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                              leading: CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage(
                                    posts[index2],
                                  )),
                              title: Row(
                                children: [
                                  Text(
                                    names[index2],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.zero,
                            width: double.maxFinite,
                            child: Image(
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                              image: AssetImage(
                                posts[index2],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              ListTile(
                                minVerticalPadding: 0,
                                enabled: false,
                                contentPadding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                                trailing: IconButton(
                                    splashRadius: 12,
                                    onPressed: () {
                                      setState(() {
                                        listtile[index2] = !listtile[index2];
                                      });
                                    },
                                    icon: (listtile[index2])
                                        ? Icon(
                                            CupertinoIcons.bookmark_fill,
                                            color: Colors.black,
                                            size: 26,
                                          )
                                        : Icon(
                                            CupertinoIcons.bookmark,
                                            color: Colors.black,
                                            size: 26,
                                          )),
                                leading: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      splashRadius: 12,
                                      onPressed: () {
                                        setState(() {
                                          love[index2] = !love[index2];
                                        });
                                      },
                                      icon: love[index2]
                                          ? Icon(
                                              CupertinoIcons.suit_heart_fill,
                                              color: Colors.red,
                                              size: 26,
                                            )
                                          : Icon(
                                              CupertinoIcons.suit_heart,
                                              color: Colors.black,
                                              size: 26,
                                            ),
                                    ),
                                    IconButton(
                                      splashRadius: 12,
                                      onPressed: () {},
                                      icon: Icon(
                                        CupertinoIcons.chat_bubble,
                                        size: 26,
                                        color: Colors.black,
                                      ),
                                    ),
                                    IconButton(
                                      splashRadius: 12,
                                      onPressed: () {},
                                      icon: Icon(
                                        CupertinoIcons.location,
                                        size: 26,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                    focusColor: Colors.grey,
                                    hintText: "Add a comment...",
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      size: 26,
                                    )),
                              ),
                            ],
                          ),
                        ],
                      );
                    }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const List profilesstories = [
  "images/stories/1.jpg",
  "images/stories/2.jpg",
  "images/stories/3.jpg",
  "images/stories/4.jpg",
  "images/stories/5.jpg",
  "images/stories/6.jpg",
  "images/stories/7.jpg",
  "images/stories/8.jpeg",
  "images/stories/9.jpg",
  "images/stories/10.jpg",
];

const List posts = [
  "images/posts/cillianmurphy.jpg",
  "images/posts/egypt.jpg",
  "images/posts/forbes.jpg",
  "images/posts/mercedes.jpg",
  "images/posts/mustang.jpg",
  "images/posts/peaky.jpg",
  "images/posts/tayson.jpg",
  "images/posts/vikings.jpg",
  "images/posts/leomessi.jpg",
];

const List names = [
  "cillianmurphyofficial",
  "uniqueegypt",
  "Forbes",
  "mercedesbenz",
  "fordmustang",
  "peakyblindersofficial",
  "Mike Tayson",
  "vikings",
  "leomessi",
];

List listtile = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

List love = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
