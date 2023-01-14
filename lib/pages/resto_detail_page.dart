import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sub_flutter_pemula/constant.dart';

class RestoDetail extends StatelessWidget {
  final String? restoName;
  final String? location;
  final String? price;
  final String? restoGambar;

  RestoDetail({
    this.restoName,
    this.location,
    this.price,
    this.restoGambar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: kDarkGrey,
            elevation: 0,
            leading: IconButton(
                icon: Icon(Icons.arrow_back, color: kOrange),
                onPressed: () {
                  Navigator.pop(context);
                }),
            centerTitle: true,
            title: Text(restoName!,
                style: GoogleFonts.poppins(
                    color: kBlack,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600))),
        body: SingleChildScrollView(
          child: SafeArea(
            minimum: EdgeInsets.all(kSafePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.only(top: kSafePadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/$restoGambar',
                        scale: 1.5,
                        width: 100,
                      ),
                      SizedBox(width: kSafePadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(restoName!,
                              style: GoogleFonts.lato(
                                  color: kBlack,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700)),
                          Text(location!,
                              style: GoogleFonts.lato(
                                  color: kDarkGrey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700)),
                          Text(price!,
                              style: GoogleFonts.lato(
                                  color: kDarkGrey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 1.5 * kSafePadding),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Job Description',
                          style: GoogleFonts.poppins(
                              color: kBlack,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: kBasePadding),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.lato(color: kBlack, fontSize: 16.0),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 1.5 * kSafePadding),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Facility',
                          style: GoogleFonts.poppins(
                              color: kBlack,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: kBasePadding),
                      Text('•\tToilet',
                          style:
                              GoogleFonts.lato(color: kBlack, fontSize: 16.0)),
                      Text('•\tWifi',
                          style:
                              GoogleFonts.lato(color: kBlack, fontSize: 16.0)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
