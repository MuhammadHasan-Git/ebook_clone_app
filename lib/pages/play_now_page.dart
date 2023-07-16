import 'package:ebook_clone_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class PlayNowPage extends StatefulWidget {
  final String img;
  final String title;
  final String subTitle;
  const PlayNowPage(
      {super.key,
      required this.img,
      required this.title,
      required this.subTitle});

  @override
  State<PlayNowPage> createState() => _PlayNowPageState();
}

class _PlayNowPageState extends State<PlayNowPage> {
  bool isplay = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
          child: getAppBar(), preferredSize: const Size.fromHeight(60)),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
      backgroundColor: white,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: const Text(
        "Playing Now",
        style: TextStyle(
          fontSize: 18,
          color: black,
        ),
      ),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: black,
            size: 22,
          )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: black,
              size: 30,
            ))
      ],
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    spreadRadius: 5,
                    color: black.withOpacity(0.1),
                    offset: const Offset(0, 10),
                  ),
                ],
                image: DecorationImage(
                    image: AssetImage(widget.img), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              widget.subTitle,
              style: TextStyle(
                fontSize: 16,
                color: black.withOpacity(0.6),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 4,
                  decoration: BoxDecoration(
                    color: black.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Container(
                  width: 150,
                  height: 4,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "0:34:15",
                  style: TextStyle(
                    fontSize: 13,
                    color: black.withOpacity(0.5),
                  ),
                ),
                Text(
                  "5:34:15",
                  style: TextStyle(
                    fontSize: 13,
                    color: black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      LineIcons.stepBackward,
                      color: primary,
                      size: 25,
                    )),
                const SizedBox(
                  width: 25,
                ),
                IconButton(
                  splashRadius: 1,
                  iconSize: 50,
                  onPressed: () {
                    setState(() {
                      isplay = !isplay;
                    });
                  },
                  icon: Container(
                    decoration: const BoxDecoration(
                      color: primary,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child: isplay
                            ? const Icon(
                                Icons.pause,
                                size: 30,
                                color: white,
                              )
                            : const Icon(
                                Icons.play_arrow,
                                size: 30,
                                color: white,
                              )),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      LineIcons.stepForward,
                      color: primary,
                      size: 25,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
