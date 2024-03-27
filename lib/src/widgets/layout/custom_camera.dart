import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:what_the_crush_app/src/helpers/Colors_Gradient.dart/Appcolors.dart';

class CameraWidget extends StatefulWidget {
  const CameraWidget({super.key, this.onImageSelected});
  final void Function(File? image)? onImageSelected;

  @override
  CameraWidgetState createState() => CameraWidgetState();
}

class CameraWidgetState extends State<CameraWidget> {
  File? _image;

  Future<void> _getImageFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
      widget.onImageSelected?.call(_image);
    }
  }

  void _openImage() {
    // Implement the logic to open the selected image here
    // You can use a dialog, navigator, or any other method based on your requirements
    // For example, you can show the image in a new screen or a dialog.
    // print('Open Image');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 100.w,
          // height: 150.h,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              GestureDetector(
                onTap: _image != null ? _openImage : _getImageFromCamera,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor:
                      Colors.grey, // Set a default background color
                  child: _image != null
                      ? ClipOval(
                          child: Image.file(
                            _image!,
                            cacheHeight: 150,
                            cacheWidth: 150,
                            fit: BoxFit.cover,
                          ),
                        )
                      : const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                ),
              ),
              Positioned(
                right: -2,
                child: GestureDetector(
                  onTap: _getImageFromCamera,
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor:
                        AppColors.purpleP500, // Set a default background color
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                      size: 11,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
