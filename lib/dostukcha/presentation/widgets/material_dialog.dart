import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> materialDialog(
  BuildContext context,
  String title,
  String content,
) async =>
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            child: const Text('Deny'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          TextButton(
            child: const Text('Settings'),
            onPressed: () => openAppSettings(),
          ),
        ],
      ),
    );
