part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Sign In'),
          onPressed: () {
            AuthServices.signIn('JohnDoe2', '123456');
          },
        ),
      ),
    );
  }
}
