import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/helpers/email_service.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/widgets/custom_text.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  var nameValue = "";
  var emailValue = "";
  var subjectValue = "";
  var messageValue = "";

  Color buttonColor = myAccent;
  Widget buttonChild = Text("CONTACT_SEND".tr);

  _onSendRespons(res) {
    if (res.statusCode == 200) {
      _formKey.currentState?.reset();
      setState(() {
        buttonColor = Colors.green;
        buttonChild = Text("CONTACT_SEND_SUCCESS".tr);
      });
    } else {
      setState(() {
        buttonColor = Colors.red;
        buttonChild = Text("CONTACT_SEND_FAIL".tr);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "CONTACT_NAME_MANDATORY".tr;
                  }
                },
                onSaved: (val) => nameValue = val.toString(),
                decoration: _inputFieldDeco("CONTACT_NAME".tr)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "CONTACT_EMAIL_MANDATORY".tr;
                  }
                  if (!RegExp(r"^\S+@\S+\.\S+$").hasMatch(val)) {
                    return "CONTACT_EMAIL_NO_MAIL".tr;
                  }
                },
                onSaved: (val) => emailValue = val.toString(),
                decoration: _inputFieldDeco("CONTACT_EMAIL".tr)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "CONTACT_SUBJECT_MANDATORY".tr;
                  }
                },
                onSaved: (val) => subjectValue = val.toString(),
                decoration: _inputFieldDeco("CONTACT_SUBJECT".tr)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "CONTACT_MESSAGE_MANDATORY".tr;
                  }
                },
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                onSaved: (val) => messageValue = val.toString(),
                decoration: _inputFieldDeco("CONTACT_MESSAGE".tr)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState == null) return;
                if (!_formKey.currentState!.validate()) return;
                _formKey.currentState!.save();

                setState(() {
                  buttonChild = const CircularProgressIndicator();
                });

                sendEmail(
                        name: nameValue,
                        email: emailValue,
                        subject: subjectValue,
                        message: messageValue)
                    .then((res) => _onSendRespons(res));
              },
              style: ElevatedButton.styleFrom(
                primary: buttonColor,
              ),
              child: buttonChild,
            ),
          )
        ],
      ),
    );
  }

  InputDecoration _inputFieldDeco(hint) {
    return InputDecoration(
      border: InputBorder.none,
      filled: true,
      labelText: hint,
    );
  }
}
