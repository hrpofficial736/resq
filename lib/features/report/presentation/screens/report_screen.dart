import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/drop_down.dart';
import 'package:resq/core/widgets/media_uploader.dart';
import 'package:resq/core/widgets/resq_elevated_button.dart';
import 'package:resq/core/widgets/text_field.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  String? dropDownCurrentValue;
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
                  ),
                  ResqDropDown(
                      selectedValue: dropDownCurrentValue,
                      onChanged: (value) {
                        setState(() {
                          dropDownCurrentValue = value;
                        });
                      }),
                  ResqTextField(icon: Icon(Icons.location_on),
                      hintText: "Location", labelText: "Location", maxLines: 1),
                  ResqTextField(
                    hintText: "Description",
                    labelText: "Incident Description",
                    maxLines: 5,
                  ),
                      MediaUploader(),
                  ResqElevatedButton(text: "Submit")
                ])))));
  }
}
