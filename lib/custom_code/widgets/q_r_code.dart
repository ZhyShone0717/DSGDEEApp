// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class QRCode extends StatefulWidget {
  const QRCode({
    Key? key,
    this.width,
    this.height,
    this.qrSize,
    this.qrData,
    this.gapLess,
    this.qrVersion,
    this.qrPadding,
    this.qrBorderRadius,
    this.semanticsLabel,
    this.qrBackgroundColor,
    this.qrForegroundColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? qrSize;
  final String? qrData;
  final bool? gapLess;
  final int? qrVersion;
  final double? qrPadding;
  final double? qrBorderRadius;
  final String? semanticsLabel;
  final Color? qrBackgroundColor;
  final Color? qrForegroundColor;

  @override
  _QRCodeState createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
