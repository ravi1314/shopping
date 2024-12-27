part of 'forgat_password_import.dart';

class ForgatPasswordScreen extends StatefulWidget {
  const ForgatPasswordScreen({super.key});

  @override
  State<ForgatPasswordScreen> createState() => _ForgatPasswordScreenState();
}

class _ForgatPasswordScreenState extends State<ForgatPasswordScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController newpasswordController = TextEditingController();

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
                          text: 'new password',
                          controller: newpasswordController, focusNode: FocusNode(),),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        height: 40,
                        minWidth: 170,
                        elevation: 10,
                        color: Colors.white,
                        onPressed: () {},
                        child: const Text('set password'),
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
                                            const SigninScreen()));
                              },
                              child: const Text(
                                'sign in',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16),
                              )),

                          const SizedBox(
                            width: 132,
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
