import 'dart:io';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/drop_down.dart';
import 'package:resq/core/widgets/media_uploader.dart';
import 'package:resq/core/widgets/resq_elevated_button.dart';
import 'package:resq/core/widgets/text_field.dart';
import 'package:resq/features/report/data/report_model.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  String? dropDownCurrentValue;
  ReportModel report = ReportModel(
      reporterName: "",
      description: "",
      image: null,
      incidentType: "",
      location: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        body: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
            child: Form(
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 20,
                        children: [
                  Text('Report an Incident',
                      style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: AppColorScheme().primaryTextColor)),
                  ResqTextField(
                    hintText: "Name",
                    labelText: "Your Name",
                    maxLines: 1,
                    getValue: (String text) {
                      report.reporterName = text;
                    },
                  ),
                  ResqDropDown(
                      selectedValue: dropDownCurrentValue,
                      onChanged: (value) {
                        
                          dropDownCurrentValue = value;
                          report.incidentType = value;
                        
                      }),
                  ResqTextField(
                      icon: Icon(Icons.location_on),
                      hintText: "Location",
                      labelText: "Location",
                      getValue: (String text) {
                        report.location = text;
                      },
                      maxLines: 1),
                  ResqTextField(
                    hintText: "Description",
                    labelText: "Incident Description",
                    getValue: (String text) {
                      report.description = text;
                    },
                    maxLines: 5,
                  ),
                  MediaUploader(
                    getImage: (File image) {
                      report.image = image;
                    },
                  ),
                  ResqElevatedButton(
                    text: "Submit",
                    onPressed: () {
                      final successSnackBar = SnackBar(
                          backgroundColor: Colors.transparent,
                          content: AwesomeSnackbarContent(
                              title: "Incident Reported",
                              titleTextStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20.0),
                              message: "Our team will soon be in action...",
                              messageTextStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400),
                              contentType: ContentType.success));
                      final failureSnackBar = SnackBar(
                          backgroundColor: Colors.transparent,
                          content: AwesomeSnackbarContent(
                              title: "Incomplete Report",
                              titleTextStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20.0),
                              message: "Please fill all the details...",
                              messageTextStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400),
                              contentType: ContentType.failure));
                      if (report.reporterName.isNotEmpty &&
                          report.incidentType.isNotEmpty &&
                          report.location.isNotEmpty &&
                          report.description.isNotEmpty &&
                          report.image != null) {
                        print(report.reporterName);
                        print(report.incidentType);
                        print(report.description);
                        print(report.image);
                        print(report.location);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(successSnackBar);
                      } else {
                        print(report.reporterName);
                        print(report.incidentType);
                        print(report.description);
                        print(report.image);
                        print(report.location);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(failureSnackBar);
                      }
                    },
                  )
                ])))));
  }
}
