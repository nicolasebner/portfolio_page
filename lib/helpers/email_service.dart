import 'dart:convert';

import 'package:http/http.dart' as http;

Future sendEmail({
  required String name,
  required String email,
  required String subject,
  required String message,
}) async {
  const serviceId = "service_87yw6t7";
  const templateId = "template_crra2ol";
  const userId = "user_dBBgcysWKlfMY8RBaSvrw";

  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: json.encode({
      "service_id": serviceId,
      "template_id": templateId,
      "user_id": userId,
      "template_params": {
        "user_name": name,
        "user_email": email,
        "user_subject": subject,
        "user_message": message,
      }
    }),
  );

  return response;
}
