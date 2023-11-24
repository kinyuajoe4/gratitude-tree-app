// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// // Automatic FlutterFlow imports
// import '/backend/backend.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/custom_code/widgets/index.dart'; // Imports other custom widgets
// import '/custom_code/actions/index.dart'; // Imports custom actions
// import '/flutter_flow/custom_functions.dart'; // Imports custom functions
// import 'package:flutter/material.dart';
// // Begin custom widget code
// // DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// import 'package:tflite/tflite.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:image_downloader/image_downloader.dart';
// import 'dart:io';

// class TreeRecognitionWidget extends StatefulWidget {
//   const TreeRecognitionWidget({
//     Key? key,
//     this.width,
//     this.height,
//     this.imageUrl,
//   }) : super(key: key);

//   final double? width;
//   final double? height;
//   final String? imageUrl;

//   @override
//   _TreeRecognitionWidgetState createState() => _TreeRecognitionWidgetState();
// }

// class _TreeRecognitionWidgetState extends State<TreeRecognitionWidget> {
//   final ImagePicker _picker = ImagePicker();
//   String? _imageUrl;
//   List? _recognitions;

//   @override
//   void initState() {
//     super.initState();
//     _imageUrl = widget.imageUrl;
//     loadModel();
//     if (_imageUrl != null && _imageUrl != '') {
//       grabImage();
//     }
//   }

//   Future<void> loadModel() async {
//     try {
//       await Tflite.loadModel(
//         model: 'assets/your_model.tflite', // Update with your model's path
//         labels: 'assets/your_labels.txt', // Update with your labels file's path
//       );
//       print("Loaded model");
//     } catch (e) {
//       print('Failed to load model: ' + e.toString());
//     }
//   }

//   Future<void> grabImage() async {
//     String? imageId = await ImageDownloader.downloadImage(_imageUrl!);
//     if (imageId == null) {
//       return;
//     }
//     String? path = await ImageDownloader.findPath(imageId);
//     print('Saved new image: ' + path!);
//     await recognizeImage(File(path!));
//   }

//   Future<void> recognizeImage(File image) async {
//     var recognitions = await Tflite.runModelOnImage(
//       path: image.path,
//       numResults: 2, // Set the number of expected results (classes)
//     );

//     setState(() {
//       _recognitions = recognitions;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ElevatedButton(
//           onPressed: () => _pickImage(ImageSource.gallery),
//           style: ElevatedButton.styleFrom(
//             primary: Colors.blue, // Update the button color as needed
//           ),
//           child: Text('Select Image'),
//         ),
//         if (_recognitions != null)
//           Text(
//             _recognitions![0]['label'] ?? 'No Classification',
//             style: TextStyle(
//               color: Colors.black, // Update the text color as needed
//             ),
//           ),
//       ],
//     );
//   }

//   Future<void> _pickImage(ImageSource source) async {
//     final pickedImage = await _picker.pickImage(source: source);
//     if (pickedImage != null) {
//       File selectedImage = File(pickedImage.path);
//       await recognizeImage(selectedImage);
//     }
//   }

//   @override
//   void dispose() {
//     Tflite.close();
//     super.dispose();
//   }
// }

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
