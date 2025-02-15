import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

import 'package:resq/core/constants/color_scheme.dart';

class MediaUploader extends StatefulWidget {
  final Function getImage;
  const MediaUploader({super.key, required this.getImage});

  @override
  State<MediaUploader> createState() => _MediaUploaderState();
}

class _MediaUploaderState extends State<MediaUploader> {
  File? _file;
  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _file = File(result.files.single.path!);
      });
      widget.getImage(_file);    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: DottedBorder(
            color: AppColorScheme().primaryTextColor,
            radius: const Radius.circular(12),
            borderType: BorderType.RRect,
            dashPattern: const [6, 3],
            child: Center(
                child: SizedBox(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(150),
                          elevation: 0,
                          backgroundColor:
                              AppColorScheme().primaryBackgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          pickFile();
                        },
                        child: _file != null
                            ? Image.file(
                                _file!,
                                fit: BoxFit.cover,
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Icon(Icons.cloud_upload_outlined,
                                        color:
                                            AppColorScheme().primaryTextColor),
                                    SizedBox(width: 10),
                                    Text('Upload Image',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: 'Poppins',
                                            color: AppColorScheme()
                                                .primaryTextColor))
                                  ]))))));
  }
}
