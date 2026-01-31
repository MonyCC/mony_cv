import 'dart:html' as html;
import 'package:flutter/services.dart';
import 'package:mony_cv/constants/asset_paths.dart';

class PDFOpener {
  Future<void> openCV() async {
    try {
      final bytes = await rootBundle.load(AssetPaths.cvPdf);
      final blob = html.Blob([bytes.buffer.asUint8List()], 'application/pdf');
      final url = html.Url.createObjectUrlFromBlob(blob);
      html.window.open(url, "_blank");
      html.Url.revokeObjectUrl(url);
    } catch (e) {
      // Fallback to direct URL if bundle fails
      const url = 'https://yourwebsite.com/cv.pdf';
      html.window.open(url, "_blank");
    }
  }
}