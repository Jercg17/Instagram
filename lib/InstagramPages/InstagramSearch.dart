import 'package:flutter/material.dart';

class InstagramSearch extends StatefulWidget {
  InstagramSearch({Key key}) : super(key: key);

  @override
  _InstagramSearchState createState() => _InstagramSearchState();
}

class _InstagramSearchState extends State<InstagramSearch> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Image.asset(
              "assets/images/pelusa.jpeg",
              height: 400,
              width: width * .01,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * .01,
                ),
                Image.asset(
                  "assets/images/ricardog2.jpeg",
                  height: 110,
                  width: 110,
                ),
                SizedBox(
                  width: width * .01,
                ),
                Image.asset(
                  "assets/images/ricardog3.jpeg",
                  height: 110,
                  width: 110,
                ),
                SizedBox(
                  width: width * .01,
                ),
                Image.asset(
                  "assets/images/ricardog4.jpeg",
                  height: 110,
                  width: 110,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: width * .01,
                    ),
                    Image.asset(
                      "assets/images/randomcute.jpeg",
                      height: 110,
                      width: 110,
                    ),
                    SizedBox(
                      width: width * .01,
                    ),
                    Image.asset(
                      "assets/images/randomcute2.jpeg",
                      height: 110,
                      width: 110,
                    ),
                    SizedBox(
                      width: width * .01,
                    ),
                    Image.asset(
                      "assets/images/ricardog5.jpeg",
                      height: 110,
                      width: 110,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: width * .01,
                    ),
                    Image.asset(
                      "assets/images/pelusa2.jpeg",
                      height: 110,
                      width: 110,
                    ),
                    SizedBox(
                      width: width * .01,
                    ),
                    Image.asset(
                      "assets/images/ricardog6.jpeg",
                      height: 110,
                      width: 110,
                    ),
                    SizedBox(
                      width: width * .01,
                    ),
                    Image.asset(
                      "assets/images/pochi.jpeg",
                      height: 110,
                      width: 110,
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
