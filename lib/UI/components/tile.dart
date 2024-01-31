import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class LaysTile extends StatelessWidget {
  final String mainTitle;
  final String subTitle;
  final String imgPath;
  const LaysTile(
      {super.key,
      required this.mainTitle,
      required this.subTitle,
      required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 28,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.01,
      ),
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: borderBlue,
          width: 3,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  mainTitle,
                  style: TextStyle(
                    color: white,
                    fontSize: MediaQuery.of(context).textScaleFactor * 30,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    color: white,
                    fontSize: MediaQuery.of(context).textScaleFactor * 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: fillButtonBg,
                          elevation: 0,
                        ),
                        onPressed: () => {},
                        child: Text(
                          tileButtonLabels[0],
                          style: const TextStyle(
                            color: black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: white,
                            width: 2,
                          ),
                          foregroundColor: white,
                        ),
                        onPressed: () => {},
                        child: Text(
                          tileButtonLabels[1],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.18,
            height: MediaQuery.of(context).size.height * 0.3,
            // color: Colors.yellow,
            child: Image.asset(
              imgPath,
              alignment: Alignment.centerRight,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
