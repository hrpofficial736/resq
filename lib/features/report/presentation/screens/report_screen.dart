import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/app_bar.dart';
import 'package:resq/core/widgets/bottom_navbar.dart';
import 'package:resq/core/widgets/drop_down.dart';
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
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0), child: ResqAppBar()),
        bottomNavigationBar: BottomNavbar(),
        body: Padding(
            padding: EdgeInsets.all(20),
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
                  const SizedBox(height: 10),
                  ResqTextField(hintText: "Name", labelText: "Your Name"),
                  ResqDropDown(
                      selectedValue: dropDownCurrentValue,
                      onChanged: (value) {
                        setState(() {
                          dropDownCurrentValue = value;
                        });
                      }),
                  ResqTextField(
                      hintText: "Description",
                      labelText: "Incident Description"),
                  ResqTextField(hintText: "Name", labelText: "Your Name")
                ])))));
  }
}
