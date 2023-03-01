import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('form'),
        ),
        body: const MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final formkey = GlobalKey<FormState>();

  String resetTxt = 'Reset';
  String preSubmitTxt = 'Submit';
  String submitTxt = 'Submitted';

  void submit() {
    setState(() {});
  }

  void reset() {
    submitTxt = preSubmitTxt;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your name',
                labelText: 'Full Name'),
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.date_range),
                hintText: 'Enter Your date of birth',
                labelText: 'DOB'),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter your contact number',
              labelText: 'Contact',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.email),
              hintText: 'Enter Your email',
              labelText: 'email',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.details_sharp),
                hintText: 'Enter full address ',
                labelText: 'Address'),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                  onPressed: () => submit(),
                  child: Text(preSubmitTxt),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                  onPressed: () => submit(),
                  child: Text(resetTxt),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
