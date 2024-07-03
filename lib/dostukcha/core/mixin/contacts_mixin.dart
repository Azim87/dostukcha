import 'package:url_launcher/url_launcher.dart';

mixin ContactsMixin {
  Future<void> makePhoneCall(String phoneNumber) async {
    final phoneUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(phoneUri);
  }

  Future<void> makePhoneCall2(Uri phoneNumber) async => launchUrl(phoneNumber);

  Future<void> sendEmail(String email) async {
    final emailUri = Uri(scheme: 'mailto', path: email);
    await launchUrl(emailUri);
  }

  Future<void> openTg(String uri) async =>  launchUrl(Uri.parse('https://t.me/podrabotka_dostukcha'), mode: LaunchMode.externalApplication);

  Future<void> sendEmailTo(String email) async {
    final emailUri = Uri(scheme: 'mailto', path: 'info@dostukcha.kg');
    await launchUrl(emailUri);
  }
}
