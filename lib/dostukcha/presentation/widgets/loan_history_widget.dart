import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../config/navigation/nav_strings.dart';
import '../../config/navigation/navigation.dart';
import '../../core/util/utils.dart';
import '../../data/model/get_loan_history/loan_history_data.dart';

class LoanHistoryWidget extends StatefulWidget {
  const LoanHistoryWidget({required this.index, super.key, required this.loanHistoryData});

  final LoanHistoryData loanHistoryData;

  final int index;

  @override
  State<LoanHistoryWidget> createState() => _LoanHistoryWidgetState();
}

class _LoanHistoryWidgetState extends State<LoanHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.index == 0) const Divider(thickness: 1),
        Text('№${widget.loanHistoryData.contractId}'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${widget.loanHistoryData.sum} ${AppConstants.KG_SOM}',
              style: widget.index == 2 ? AppStyles.blueTitleStyle : AppStyles.appBarTitleStyle,
            ),
            Text(
              '${widget.loanHistoryData.status}',
              style: widget.loanHistoryData.status!.contains('Active') ? AppStyles.blueTextThin : AppStyles.text600,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Выдан ${DateFormat(AppConstants.DATE_FORMAT).format(widget.loanHistoryData.createDate!)}'),
            TextButton(
                onPressed: () {
                  Navigation.route.goRouter
                      .pushNamed(Navs.loanHistoryCheck, pathParameters: {'creditId': widget.loanHistoryData.creditId.toString()});
                  // showDialog(
                  //     context: context,
                  //     builder: (c) => AlertDialog(
                  //           content: SizedBox(
                  //             height: MediaQuery.of(context).size.height / 2,
                  //             child: InAppWebView(
                  //               onLoadStop: (_, __) => setState(() {}),
                  //               initialUrlRequest: URLRequest(
                  //                   url: Uri.parse('https://dostukcha.kg:5724/document/ReceiptProduct?creditId=${widget.loanHistoryData.creditId}')),
                  //               onReceivedServerTrustAuthRequest: (controller, challenge) async =>
                  //                   ServerTrustAuthResponse(action: ServerTrustAuthResponseAction.PROCEED),
                  //               initialOptions: InAppWebViewGroupOptions(
                  //                 crossPlatform: InAppWebViewOptions(
                  //                   userAgent:
                  //                       'Mozilla/5.0 (iPhone; CPU iPhone OS 11_0 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) Version/11.0 Mobile/15A5341f Safari/604.1',
                  //                 ),
                  //                 android: AndroidInAppWebViewOptions(),
                  //               ),
                  //             ),
                  //           ),
                  //         ));
                },
                child: const Text(
                  'Показать чек',
                  style: TextStyle(decoration: TextDecoration.underline),
                ))
          ],
        ),
        const Divider(thickness: 1),
      ].withSpaceBetween(height: 7),
    );
  }
}
