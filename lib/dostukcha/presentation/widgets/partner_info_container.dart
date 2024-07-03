import 'dart:io';

import 'package:flutter/material.dart';

import '../../core/util/utils.dart';
import '../../data/model/processing_partner_addresses/processing_partner_addresses_model.dart';

class PartnersInfoContainer extends StatelessWidget {
  const PartnersInfoContainer({super.key, required this.partnerAddresses, required this.file});

  final Address partnerAddresses;
  final File file;

  @override
  Widget build(BuildContext context) => Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        color: Colors.white,
        child: Row(
          children: [
            if (file != null)
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  child: Image.file(
                    File.fromUri(
                      Uri.parse(file.path),
                    ),
                    height: 40,
                  ),
                  // child: Image.asset(
                  //   Assets.partner_logo,
                  //   height: 40,
                  // ),
                ),
              ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(partnerAddresses.name ?? ''),
                    Expanded(
                        flex: 0,
                        child: Text(
                          partnerAddresses.address ?? '',
                          style: const TextStyle(fontSize: 12),
                        )),
                  ].withSpaceBetween(height: 5),
                ),
              ),
            ),
          ],
        ),
      );
}
