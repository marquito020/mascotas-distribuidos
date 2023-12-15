import 'dart:io';

import 'package:adopet_app/src/constants/cloudinary_config.dart';
import 'package:cloudinary/cloudinary.dart';
import 'package:flutter/foundation.dart';

Future<String> urlCloudinary(file, context) async {
  File fileBytes = File(file.path);
  final cloudinary = Cloudinary.signedConfig(
    apiKey: CloudinaryConfig().apiKey,
    apiSecret: CloudinaryConfig().apiSecret,
    cloudName: CloudinaryConfig().cloudName,
  );
  final response = await cloudinary.upload(
    file: file.path,
    folder: CloudinaryConfig().folder,
    fileName: CloudinaryConfig().fileName,
    resourceType: CloudinaryResourceType.image,
    optParams: {
      'public_id': CloudinaryConfig().publicId,
      'overwrite': true,
    },
    publicId: CloudinaryConfig().publicId,
    progressCallback: (count, total) {
      if (kDebugMode) {
        print('Uploading image from file with progress: $count/$total');
      }
    },
    fileBytes: fileBytes.readAsBytesSync(),
  );
  if (response.isSuccessful) {
    /* print('Get your image from with ${response.secureUrl}'); */
    late String? image = response.secureUrl;
    if (kDebugMode) {
      print("imagen url: $image");
    }
    return image!;
  } else {
    if (kDebugMode) {
      print("error");
    }
    return "error";
  }
}
