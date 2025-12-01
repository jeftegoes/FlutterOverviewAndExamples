import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isLogin = true;
  final _formKey = GlobalKey<FormState>();
  String _enteredEmail = "";
  String _enteredPassword = "";

  bool _setIsLogin() {
    setState(() {
      _isLogin = !_isLogin;
    });

    return _isLogin;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.trim().isEmpty || !value.contains("@")) {
      return 'Please enter a valid email address.';
    }

    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.trim().length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    return null;
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.save();
    }
  }

  void _onSavedEmail(String value) {
    _enteredEmail = value;
  }

  void _onSavedPassword(String value) {
    _enteredPassword = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
                width: 180,
                child: Image.asset('assets/images/chat.png'),
              ),
              Card(
                margin: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            validator: (value) {
                              return _validateEmail(value);
                            },
                            onSaved: (newValue) => _onSavedEmail(newValue!),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Password'),
                            obscureText: true,
                            validator: (value) {
                              return _validatePassword(value);
                            },
                            onSaved: (newValue) => _onSavedPassword(newValue!),
                          ),
                          SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: _submit,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.primaryContainer,
                            ),
                            child: Text(_isLogin ? "Login" : 'Signup'),
                          ),
                          TextButton(
                            onPressed: _setIsLogin,
                            child: Text(
                              _isLogin
                                  ? "Create an account"
                                  : "I already have an account",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
