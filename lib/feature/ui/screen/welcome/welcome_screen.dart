// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

part of 'welcome_import.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  //welcome image
                  WelcomeImage(size: size),
          
                  //all buttons
          
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RotatedBox(
                          quarterTurns: 1,
                          child: Text(
                            "Welcome ",
                            style: TextStyle(fontSize: 30),
                          ) //your text
                          ),
                      SizedBox(
                        height: 20,
                      ),
          
                      //signin buttons
          
                      MaterialButton(
                        height: 40,
                        minWidth: 200,
                        elevation: 10,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SigninScreen()));
                        },
                        child: Text(
                          'sign in',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
          
                      //signup buttons
          
                      MaterialButton(
                        height: 40,
                        minWidth: 200,
                        elevation: 10,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()));
                        },
                        child: Text(
                          'sign up',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
          
                      //google buttons
          
                      SignInButton(
                        elevation: 10,
                        Buttons.google,
                        text: "Google",
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
          
                      //facebook buttons
          
                      SignInButton(
                        elevation: 10,
                        Buttons.facebook,
                        text: "Facebook",
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
          
                      //apple buttons
          
                      SignInButton(
                        elevation: 10,
                        Buttons.apple,
                        text: "Apple",
                        onPressed: () {},
                      ),
                    ],
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
