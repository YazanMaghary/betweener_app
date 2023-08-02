import 'package:flutter/material.dart';

import '../constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailCtr;
  late TextEditingController _passCtr;

  void login() {
    if (_formKey.currentState!.validate()) {
      print('login success');
    }
  }

  @override
  void initState() {
    _emailCtr = TextEditingController();
    _passCtr = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailCtr.dispose();
    _passCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  controller: _emailCtr,
                  decoration: kTextFieldDecoration,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return 'please enter email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: _passCtr,
                  decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter Your password',
                    label: const Text('Password'),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                ElevatedButton(
                  onPressed: login,
                  child: Text('LOGIN'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
