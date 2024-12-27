part of 'signup_import.dart';


// Define SignupCubit and SignupState here
// Replace with your actual cubit and state implementations

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final FocusNode usernameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();

    usernameFocus.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();

    super.dispose();
  }

  void _unfocusFields() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<SignupCubit, SignupState>(builder: (context, state) {
        if (state is SignupLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SignupFailed) {
          return Center(child: Text(state.message));
        } else {
          return SafeArea(
            child: SingleChildScrollView(
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
                            image: AssetImage('asset/image/tree2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            const Text(
                              'Founder Welcome',
                              style: TextStyle(fontSize: 23),
                            ),
                            const SizedBox(height: 30),
                            MyTextfiled(
                              controller: usernameController,
                              focusNode: usernameFocus,
                              icon: const Icon(Icons.person_2_outlined),
                              text: 'Username',
                            ),
                            const SizedBox(height: 10),
                            MyTextfiled(
                              controller: emailController,
                              focusNode: emailFocus,
                              icon: const Icon(Icons.email_outlined),
                             text: 'Email',
                            ),
                            const SizedBox(height: 10),
                            MyTextfiled(
                              controller: passwordController,
                              focusNode: passwordFocus,
                              icon: const Icon(Icons.lock_clock_outlined),
                              text: 'password',
                            ),
                            const SizedBox(height: 10),
                            MaterialButton(
                              height: 40,
                              minWidth: 170,
                              elevation: 10,
                              color: Colors.white,
                              onPressed: () {
                                final String username = usernameController.text;
                                final String email = emailController.text;
                                final String password = passwordController.text;
                                if(username.isEmpty || email.isEmpty || password.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Please fill all fields'),
                                    ),
                                  );
                                  return;
                                }else{
                                  _unfocusFields();
                                context.read<SignupCubit>().signup(
                                     username,
                                      password,
                                      email,
                                    );

                                }
                                Future.delayed(
                                     Duration(milliseconds: 300), () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             BottomNavbarWidget()),
                                  );
                                });
                              },
                              child: const Text('Sign up'),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(width: 70),
                                TextButton(
                                  onPressed: () {
                                    _unfocusFields();
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SigninScreen()),
                                    );
                                  },
                                  child: const Text(
                                    'Sign in',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      }),
    );
  }
}
