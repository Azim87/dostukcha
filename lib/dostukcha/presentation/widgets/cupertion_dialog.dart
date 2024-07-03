import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> cupertinoDialog(
  BuildContext context,
  String title,
  String content,
) async =>
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          CupertinoDialogAction(
            child: const Text('Deny'),
            onPressed: () => Navigator.of(context).pop(),
          ),
          CupertinoDialogAction(
            child: const Text('Settings'),
            onPressed: () => openAppSettings(),
          ),
        ],
      ),
    );
