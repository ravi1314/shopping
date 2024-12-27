// ignore_for_file: avoid_print

part of 'signin_import.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //signin method

  // final AuthService authService = AuthService();
  late SharedPreferences preferences;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }

  void login() async {
    String email = emailController.text;
    String password = passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      // await authService.loginUser(email, password);
    } else {
      print('Please fill in all fields');
    }
  }

  void initSharedPref() async {
    preferences = await SharedPreferences.getInstance();
  }

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
                  Container(
                    height: size.height * 0.999,
                    width: size.width * 0.28,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(63),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                              'asset/image/tree2.jpg',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      const Text(
                        'Founder Welcome',
                        style: TextStyle(fontSize: 23),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      MyTextfiled(
                        icon: const Icon(Icons.email_outlined),
                        text: 'email',
                        controller: emailController, focusNode: FocusNode(),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MyTextfiled(
                          icon: const Icon(Icons.lock_clock_outlined),
                          text: 'password',
                          controller: passwordController, focusNode: FocusNode(),),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        height: 40,
                        minWidth: 170,
                        elevation: 10,
                        color: Colors.white,
                        onPressed: () {
                          login();
                        },
                        child: const Text('Sign in'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          //forgat password text buttons

                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgatPasswordScreen()));
                              },
                              child: const Text(
                                'forgat password',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16),
                              )),

                          const SizedBox(
                            width: 63,
                          ),
                          //sign up buttons

                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignupScreen()));
                              },
                              child: const Text(
                                'sign up',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16),
                              ))
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
