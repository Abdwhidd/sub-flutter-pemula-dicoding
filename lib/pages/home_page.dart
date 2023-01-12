import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sub_flutter_pemula/constant.dart';
import 'package:sub_flutter_pemula/models/jobs_response.dart';
import 'package:sub_flutter_pemula/pages/resto_detail_page.dart';

class HomePage extends StatefulWidget {
  final String displayName;

  HomePage({required this.displayName});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Restaurant> recommendedJobs = [
    Restaurant(
        restoName: 'Restaurant Klodia',
        location: 'Makassar',
        price: '\$90 - \$120K',
        restoGambar: 'resto1.jpeg',
        savedResto: false),
    Restaurant(
        restoName: 'Payung Teduh',
        location: 'Takalar',
        price: '\$90 - \$120K',
        restoGambar: 'resto2.jpeg',
        savedResto: false),
    Restaurant(
        restoName: 'Kopi Resto',
        location: 'Gowa',
        price: '\$90 - \$120K',
        restoGambar: 'resto3.jpeg',
        savedResto: false),
  ];

  List<Restaurant> recentJobs = [
    Restaurant(
        restoName: 'Vamous',
        location: 'Makassar',
        price: '\$90 - \$120K',
        restoGambar: 'resto4.jpeg',
        savedResto: false),
    Restaurant(
        restoName: 'Abiem',
        location: 'Makassar',
        price: '\$90 - \$120K',
        restoGambar: 'resto5.jpeg',
        savedResto: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kLightGrey,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: RichText(
            text: TextSpan(
                text: 'Cari',
                style: GoogleFonts.poppins(
                    color: kBlack, fontSize: 20.0, fontWeight: FontWeight.w800),
                children: <TextSpan>[
              TextSpan(
                  text: 'Resto',
                  style: GoogleFonts.poppins(
                      color: kOrange, fontWeight: FontWeight.w800))
            ])),
        actions: [
          IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: kDarkGrey,
              ),
              onPressed: () {
                Navigator.pop(context);
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                  kSafePadding, 2 * kSafePadding, kSafePadding, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello ${widget.displayName},',
                      style: GoogleFonts.lato(
                          color: kDarkGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700)),
                  SizedBox(height: 2.0),
                  Text('Let\'s Find Restaurant',
                      style: GoogleFonts.poppins(
                          color: kBlack,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w800))
                ],
              ),
            ),
            SizedBox(height: 1.5 * kSafePadding),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: kSafePadding),
                    child: Text(
                      'Recommended Restauran',
                      style: GoogleFonts.poppins(
                          color: kBlack,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 2 * kBasePadding),
                  Container(
                    height: 12 * kSafePadding,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: recommendedJobs.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return RestoDetail(
                                jobPosition: recommendedJobs[index].restoName,
                                companyName: recommendedJobs[index].location,
                                location: recommendedJobs[index].location,
                                salaryRange: recommendedJobs[index].price,
                                logoName: recommendedJobs[index].restoGambar,
                              );
                            }));
                          },
                          child: Container(
                            width: 10 * kSafePadding,
                            margin: index != recommendedJobs.length - 1
                                ? EdgeInsets.only(left: kSafePadding)
                                : EdgeInsets.symmetric(
                                    horizontal: kSafePadding),
                            padding: EdgeInsets.symmetric(
                                vertical: kSafePadding,
                                horizontal: 2 * kBasePadding),
                            decoration: BoxDecoration(
                                border: Border.all(color: kLightGrey)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/${recommendedJobs[index].restoGambar}',
                                  scale: 2.0,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(height: 2.0),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(recommendedJobs[index].restoName,
                                        style: GoogleFonts.lato(
                                            color: kBlack,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(height: 2.0),
                                    Text(recommendedJobs[index].location,
                                        style: GoogleFonts.lato(
                                            color: kDarkGrey,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(height: 4.0),
                                    Text(recommendedJobs[index].price,
                                        style: GoogleFonts.lato(
                                            color: kDarkGrey,
                                            fontWeight: FontWeight.w600))
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.5 * kSafePadding),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kSafePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent restauran',
                    style: GoogleFonts.poppins(
                        color: kBlack,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 2 * kBasePadding),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: recentJobs.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RestoDetail(
                              jobPosition: recentJobs[index].restoName,
                              companyName: recentJobs[index].location,
                              location: recentJobs[index].location,
                              salaryRange: recentJobs[index].price,
                              logoName: recentJobs[index].restoGambar,
                            );
                          }));
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: kSafePadding),
                          padding: EdgeInsets.all(kSafePadding),
                          decoration: BoxDecoration(
                              border: Border.all(color: kLightGrey)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/${recentJobs[index].restoGambar}',
                                      scale: 2.0,
                                      width: 100,
                                    ),
                                    SizedBox(width: kSafePadding),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(recentJobs[index].restoName,
                                            style: GoogleFonts.lato(
                                                color: kBlack,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 2.0),
                                        Text(recentJobs[index].location,
                                            style: GoogleFonts.lato(
                                                color: kDarkGrey,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(height: 4.0),
                                        Text(recentJobs[index].location,
                                            style: GoogleFonts.lato(
                                              color: kDarkGrey,
                                            )),
                                        SizedBox(height: 4.0),
                                        Text(recentJobs[index].price,
                                            style: GoogleFonts.lato(
                                                color: kDarkGrey,
                                                fontWeight: FontWeight.w600))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              IconButton(
                                  icon: recentJobs[index].savedResto == true
                                      ? Icon(Icons.bookmark, color: kOrange)
                                      : Icon(Icons.bookmark_border,
                                          color: kDarkGrey),
                                  onPressed: () {
                                    setState(() {
                                      recentJobs[index].savedResto =
                                          !recentJobs[index].savedResto;
                                    });
                                  })
                            ],
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
