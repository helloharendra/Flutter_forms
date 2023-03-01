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
  String text = 'submitted';
  void submit() {
    Text(text);
    setState(() {});
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
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
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: ElevatedButton(
              onPressed: () => submit(),
              child: const Text('submit'),
            ),
          ),
        ],
      ),
    );
  }
}
