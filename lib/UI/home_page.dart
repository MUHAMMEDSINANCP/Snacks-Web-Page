import 'package:flutter/material.dart';
import 'package:snacks_web_page/UI/components/header.dart';
import 'package:snacks_web_page/UI/components/tile.dart';

import '../constants/constants.dart';

class HomePage extends StatelessWidget {
  static const id = "/";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.95,
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.015,
          vertical: MediaQuery.of(context).size.height * 0.035,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderBlue,
            width: 7,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Header(
              currentPageId: "/",
            ),
            Expanded(
              child: SizedBox(
                  // color: Colors.yellow,
                  height: MediaQuery.of(context).size.height * 0.78,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ListView.builder(
                    itemCount: laysFlavours.length,
                    itemBuilder: (BuildContext context, int index) {
                      return LaysTile(
                        mainTitle: laysFlavours[index],
                        subTitle: laysFlavoursSubtitle[index],
                        imgPath: laysFlavoursImages[index],
                      );
                    },
                  )),
            ),
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.28,
            //   child: ClipRect(
            //     child: ListView.separated(
            //       itemBuilder: (context, builder) => LaysTile(
            //         title: "Lays tile",
            //       ),
            //       separatorBuilder: (context, builder) => SizedBox(
            //         height: MediaQuery.of(context).size.height * 0.035,
            //       ),
            //       itemCount: 5,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
