import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 8, vertical: size.height / 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      "images/Vector.svg",
                      width: 16,
                      height: 14,
                      color: Color(0xff374957),
                    ),
                    Image.asset("images/image 4.png"),
                    Container()
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 26),
                width: size.width,
                height: size.height * 3 / 7,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  reverse: false,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      width: size.width * 6 / 7,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Image.asset(
                        "images/image1.png",
                      ),
                    );
                  },
                  itemCount: 2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        bottom: size.height / 50, left: size.width / 50),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffBBBBBB), width: 6),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 25,
                    margin: EdgeInsets.only(bottom: size.height / 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Color(0xff1A457D), width: 5),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: size.width / 19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              children: const [
                                TextSpan(text: 'خصم'),
                                TextSpan(
                                    text: '50%',
                                    style: TextStyle(color: Color(0xff1D3F79))),
                                TextSpan(text: 'لمساهمي “الروضة وحولي”'),
                              ]),
                        ),
                        RichText(
                          text: TextSpan(
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              children: const [
                                TextSpan(text: 'مختبر مستوصف '),
                                TextSpan(
                                    text: 'بروفيشنال وي كير',
                                    style: TextStyle(color: Color(0xff1D3F79))),
                              ]),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(bottom: size.height / 50),
                                  child: Text(
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff1D3F79),
                                      fontSize: 15,
                                    ),
                                    "للتواصل والإستفسار:",
                                  ),
                                ),
                                Text(
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                  "92219914",
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "images/image 4.png",
                                  width: 89,
                                  height: 89,
                                ),
                                Image.asset("images/image3.png"),
                              ],
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: size.height / 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(),
                              Image.asset("images/phone-call.png"),
                              Image.asset("images/instagram.png"),
                              Image.asset("images/facebook.png"),
                              Container(),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}
