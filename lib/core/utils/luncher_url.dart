

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'build_error_snackbar.dart';


Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(buildErrorSnackBar( 'Cannot launch $url'));
    }
  }
}