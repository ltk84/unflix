import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unflix/core/data/listposter.dart';
import 'package:unflix/screens/home_page/list_movies_continue_to_watch.dart';
import 'package:unflix/screens/home_page/list_poster_film.dart';
import 'package:unflix/screens/home_page/main_poster.dart';
import 'package:unflix/style/text_style.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  bool isFilm = false;
  bool isGeneral = true;
  String category = "";
  @override
  Widget build(BuildContext context) {
    TextInApp textInApp = TextInApp();
    ListPoster listPoster = ListPoster();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            ListView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              children: [
                Stack(
                  children: [
                    isFilm
                        ? MainPoster(
                            listPoster: listPoster.listFilm,
                          )
                        : isGeneral
                            ? MainPoster(
                                listPoster: listPoster.listMainPoster,
                              )
                            : MainPoster(
                                listPoster: listPoster.listTvSeries,
                              ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          end: Alignment.topCenter,
                          begin: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent,
                            Colors.black26,
                            Colors.black38,
                            Colors.black54,
                            Colors.black87,
                          ],
                          stops: [0, 0.1, 0.2, 0.4, 0.6, 0.75, 1],
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   children: [
                          //     IconButton(
                          //         onPressed: () {},
                          //         icon: Icon(
                          //           Icons.cast,
                          //           color: Colors.white,
                          //           size: 30,
                          //         )),
                          //   ],
                          // ),
                          isGeneral
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          isGeneral = false;
                                          isFilm = false;
                                        });
                                      },
                                      child: Text(
                                        'Phim tr.h??nh',
                                        style: textInApp.navigation(
                                            Colors.white, context),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          isGeneral = false;
                                          isFilm = true;
                                        });
                                      },
                                      child: Text(
                                        'Phim',
                                        style: textInApp.navigation(
                                            Colors.white, context),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                      },
                                      child: PopupMenuButton(
                                          child: Row(
                                            children: [
                                              Text(
                                                category == ""
                                                    ? 'Th??? lo???i'
                                                    : category,
                                                style: textInApp.navigation(
                                                    Colors.white, context),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.white,
                                              )
                                            ],
                                          ),
                                          itemBuilder: (context) => [
                                                PopupMenuItem<int>(
                                                  value: 0,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "T???t c???";
                                                    });
                                                  },
                                                  child: Text(
                                                    "T???t c???",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 0,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Anime";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Anime",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),

                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 1,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Vi???n t?????ng";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Vi???n t?????ng",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 2,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "T??nh c???m";
                                                    });
                                                  },
                                                  child: Text(
                                                    "T??nh c???m",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 3,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Phi??u l??u";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Phi??u l??u",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 4,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Kinh d???";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Kinh d???",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 5,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Phim ma";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Phim ma",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                              ]),
                                    )
                                  ],
                                )
                              : isFilm
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        MaterialButton(
                                          onPressed: () {},
                                          child: PopupMenuButton(
                                            initialValue: 1,
                                            child: Row(children: [
                                              Text(
                                                'Phim',
                                                style: textInApp.navigation(
                                                    Colors.white, context),
                                                textAlign: TextAlign.center,
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.white,
                                              )
                                            ]),
                                            itemBuilder: (context) => [
                                              PopupMenuItem<int>(
                                                value: 0,
                                                child: Text(
                                                  "Trang ch???",
                                                  style: textInApp.headline6(
                                                      Colors.white, context),
                                                ),
                                              ),
                                              PopupMenuItem<int>(
                                                value: 1,
                                                child: Text(
                                                  "Phim",
                                                  style: textInApp.headline6(
                                                      Colors.white, context),
                                                ),
                                              ),
                                              PopupMenuItem<int>(
                                                value: 2,
                                                child: Text(
                                                  "Phim truy???n h??nh",
                                                  style: textInApp.headline6(
                                                      Colors.white, context),
                                                ),
                                              ),
                                            ],
                                            onSelected: (index) {
                                              setState(() {
                                                if (index == 0) {
                                                  isFilm = false;
                                                  isGeneral = true;
                                                } else if (index == 1) {
                                                  isFilm = true;
                                                  isGeneral = false;
                                                } else {
                                                  isFilm = false;
                                                  isGeneral = false;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                        MaterialButton(
                                          onPressed: () {},
                                          child: PopupMenuButton(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    category == ""
                                                        ? 'Th??? lo???i'
                                                        : category,
                                                    style: textInApp.navigation(
                                                        Colors.white, context),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                              itemBuilder: (context) => [
                                                PopupMenuItem<int>(
                                                  value: 0,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "T???t c???";
                                                    });
                                                  },
                                                  child: Text(
                                                    "T???t c???",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 0,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Anime";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Anime",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),

                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 1,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Vi???n t?????ng";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Vi???n t?????ng",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 2,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "T??nh c???m";
                                                    });
                                                  },
                                                  child: Text(
                                                    "T??nh c???m",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 3,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Phi??u l??u";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Phi??u l??u",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 4,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Kinh d???";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Kinh d???",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 5,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Phim ma";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Phim ma",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                              ]),
                                        )
                                      ],
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        MaterialButton(
                                          onPressed: () {},
                                          child: PopupMenuButton(
                                            initialValue: 2,
                                            child: Row(children: [
                                              Text(
                                                'Phim truy???n h??nh',
                                                style: textInApp.navigation(
                                                    Colors.white, context),
                                                textAlign: TextAlign.center,
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.white,
                                              )
                                            ]),
                                            itemBuilder: (context) => [
                                              PopupMenuItem<int>(
                                                value: 0,
                                                child: Text(
                                                  "Trang ch???",
                                                  style: textInApp.headline6(
                                                      Colors.white, context),
                                                ),
                                              ),
                                              PopupMenuItem<int>(
                                                value: 1,
                                                child: Text(
                                                  "Phim",
                                                  style: textInApp.headline6(
                                                      Colors.white, context),
                                                ),
                                              ),
                                              PopupMenuItem<int>(
                                                value: 2,
                                                child: Text(
                                                  "Phim truy???n h??nh",
                                                  style: textInApp.headline6(
                                                      Colors.white, context),
                                                ),
                                              ),
                                            ],
                                            onSelected: (index) {
                                              setState(() {
                                                if (index == 0) {
                                                  isFilm = false;
                                                  isGeneral = true;
                                                } else if (index == 1) {
                                                  isFilm = true;
                                                  isGeneral = false;
                                                } else {
                                                  isFilm = false;
                                                  isGeneral = false;
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                        MaterialButton(
                                          onPressed: () {},
                                          child: PopupMenuButton(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    category == ""
                                                        ? 'Th??? lo???i'
                                                        : category,
                                                    style: textInApp.navigation(
                                                        Colors.white, context),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_drop_down,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                              itemBuilder: (context) => [
                                                PopupMenuItem<int>(
                                                  value: 0,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "T???t c???";
                                                    });
                                                  },
                                                  child: Text(
                                                    "T???t c???",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 0,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Anime";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Anime",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),

                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 1,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Vi???n t?????ng";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Vi???n t?????ng",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 2,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "T??nh c???m";
                                                    });
                                                  },
                                                  child: Text(
                                                    "T??nh c???m",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 3,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Phi??u l??u";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Phi??u l??u",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 4,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Kinh d???";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Kinh d???",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                                PopupMenuItem<int>(
                                                  value: 5,
                                                  onTap: (){
                                                    setState(() {
                                                      category = "Phim ma";
                                                    });
                                                  },
                                                  child: Text(
                                                    "Phim ma",
                                                    style: textInApp.headline6(
                                                        Colors.white, context),
                                                  ),
                                                ),
                                              ]),
                                        )
                                      ],
                                    ),
                        ],
                      ),
                    ),
                  ],
                ),
                _buildWatchingList(
                  textStyle: textInApp.navigation(Colors.white, context),
                  listImage: listPoster.listContinue,
                ),
                _buildFilmList(
                  title: 'Phim ??ang th???nh h??nh',
                  textStyle: textInApp.navigation(Colors.white, context),
                  listImage: listPoster.listPopular,
                ),
                _buildFilmList(
                  title: 'Ch????ng tr??nh truy???n h??nh ??u-M???',
                  textStyle: textInApp.navigation(Colors.white, context),
                  listImage: listPoster.listUSUK,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildWatchingList(
    {TextStyle? textStyle, required List<AssetImage> listImage}) {
  return Container(
    margin: const EdgeInsets.only(left: 10, right: 5, bottom: 8),
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Danh s??ch ti???p t???c xem c???a b???n',
                style: textStyle,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        ListMovieContinueToWatch(
          list: listImage,
        ),
      ],
    ),
  );
}

Widget _buildFilmList(
    {required String title,
    TextStyle? textStyle,
    required List<AssetImage> listImage}) {
  return Container(
    margin: const EdgeInsets.only(left: 10, right: 5, bottom: 8),
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: textStyle,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
        ListScrollPoster(
          list: listImage,
        ),
      ],
    ),
  );
}
