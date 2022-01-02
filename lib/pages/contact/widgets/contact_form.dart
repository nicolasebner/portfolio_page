import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/style.dart';
import 'package:portfolio_website/helpers/email_service.dart';

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
  Widget buttonChild = const Text("Nachricht abschicken");

  _onSendRespons(res) {
    if (res.statusCode == 200) {
      _formKey.currentState?.reset();
      setState(() {
        buttonColor = Colors.green;
        buttonChild = const Text("Erfolgreich Gesendet!");
      });
    } else {
      setState(() {
        buttonColor = Colors.red;
        buttonChild = const Text("Das hat leider nicht geklappt!");
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
                    return "Name ist ein Pflichtfeld";
                  }
                },
                onSaved: (val) => nameValue = val.toString(),
                decoration: _inputFieldDeco("Name")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "E-Mail ist ein Pflichtfeld";
                  }
                  if (!RegExp(r"^\S+@\S+\.\S+$").hasMatch(val)) {
                    return "Das ist keine E-Mail ;)";
                  }
                },
                onSaved: (val) => emailValue = val.toString(),
                decoration: _inputFieldDeco("E-Mail")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Betreff ist ein Pflichtfeld";
                  }
                },
                onSaved: (val) => subjectValue = val.toString(),
                decoration: _inputFieldDeco("Betreff")),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return "Nachricht ist ein Pflichtfeld";
                  }
                },
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                onSaved: (val) => messageValue = val.toString(),
                decoration: _inputFieldDeco("Nachricht")),
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
