import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sub_flutter_pemula/constant.dart';

class RestoDetail extends StatelessWidget {
  final String? jobPosition;
  final String? companyName;
  final String? location;
  final String? salaryRange;
  final String? logoName;

  RestoDetail(
      {this.jobPosition,
      this.companyName,
      this.location,
      this.salaryRange,
      this.logoName});

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
            title: Text(companyName!,
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
                        'assets/$logoName',
                        scale: 1.5,
                      ),
                      SizedBox(width: kSafePadding),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(jobPosition!,
                              style: GoogleFonts.lato(
                                  color: kBlack,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700)),
                          Text(companyName!,
                              style: GoogleFonts.lato(
                                  color: kDarkGrey,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w700)),
                          Text(location!,
                              style: GoogleFonts.lato(
                                  color: kDarkGrey, fontSize: 16.0)),
                          Text(salaryRange!,
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
                        'I am looking for a strong and efficient UI/UX designer to add to my team. Candidate must pay strong attention to Material.io guidelines. Client must also be proficient with the following technologies: Adobe XD, Invision, Photoshop, Illustrator, Zeplin.',
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
                      Text('Qualifications',
                          style: GoogleFonts.poppins(
                              color: kBlack,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: kBasePadding),
                      Text('•\tMin level of education: B.Sc. in CSE',
                          style:
                              GoogleFonts.lato(color: kBlack, fontSize: 16.0)),
                      Text('•\tExpert in Laravel framework',
                          style:
                              GoogleFonts.lato(color: kBlack, fontSize: 16.0)),
                      Text('•\tFluent in English language',
                          style:
                              GoogleFonts.lato(color: kBlack, fontSize: 16.0)),
                    ],
                  ),
                ),
                SizedBox(height: 1.5 * kSafePadding),
                Container(
                  padding: EdgeInsets.all(2 * kSafePadding),
                  decoration: BoxDecoration(
                      color: kLightGrey,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.people_outline,
                            color: kOrange,
                            size: 28.0,
                          ),
                          SizedBox(width: 1.5 * kSafePadding),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Vacancy',
                                  style: GoogleFonts.lato(
                                      color: kBlack,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: kBasePadding),
                              Text('03',
                                  style: GoogleFonts.lato(
                                      color: kBlack,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700))
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: kSafePadding),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: kOrange,
                            size: 28.0,
                          ),
                          SizedBox(width: 1.5 * kSafePadding),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Application Deadline',
                                  style: GoogleFonts.lato(
                                      color: kBlack,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: kBasePadding),
                              Text('31 Aug 2020',
                                  style: GoogleFonts.lato(
                                      color: kBlack,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700))
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: kSafePadding),
                      Row(
                        children: [
                          Icon(
                            Icons.picture_in_picture_alt,
                            color: kOrange,
                            size: 28.0,
                          ),
                          SizedBox(width: 1.5 * kSafePadding),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Interview',
                                  style: GoogleFonts.lato(
                                      color: kBlack,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: kBasePadding),
                              Text('05 Sep 2020',
                                  style: GoogleFonts.lato(
                                      color: kBlack,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
