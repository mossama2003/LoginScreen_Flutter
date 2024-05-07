import 'package:flutter/material.dart';
import 'sign_in_screen.dart';
import 'custom_app_navigator.dart';
import 'custom_text_button.dart';
import 'custom_text_form_field.dart';

class Visibility {
  static bool isVisible = true;

  static void changeVisibility() {
    isVisible = !isVisible;
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  void changeVisibility() {
    setState(() {
      Visibility.changeVisibility();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xFF2A4ECA),
                    fontSize: 32,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'It was popularised in the 1960s with the release of Letraset sheetscontaining Lorem Ipsum.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF61677D),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.80,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => print('facebook pressed'),
                      child: Row(
                        children: [
                          Container(
                            width: 145,
                            height: 56,
                            decoration: const BoxDecoration(
                                color: Color(0xFFF5F9FE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14))),
                            child: Row(
                              children: [
                                const SizedBox(width: 16),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF1877F2),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6))),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    child: Image.asset(
                                      'assets/images/facebook.jpeg',
                                      height: 150,
                                      width: 100,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Facebook',
                                  style: TextStyle(
                                      color: Color(0xFF61677D),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => print('google pressed'),

                      child: Row(
                        children: [
                          Container(
                            width: 145,
                            height: 56,
                            decoration: const BoxDecoration(
                                color: Color(0xFFF5F9FE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(14))),
                            child: Row(
                              children: [
                                const SizedBox(width: 16),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(6))),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    child:
                                        Image.asset('assets/images/google.jpeg'),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                const Text(
                                  'Google',
                                  style: TextStyle(
                                      color: Color(0xFF61677D),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.black12,
                        indent: 20,
                        endIndent: 12,
                      ),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                        color: Color(0xFF262626),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        height: 3,
                        color: Colors.black12,
                        indent: 20,
                        endIndent: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    const CustomTextFormField(
                      hint: 'Name',
                      fillColor: Color(0xFFF5F9FE),
                      isFilled: true,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w200,
                      formBorderRadius: 14,
                      textHPadding: 24,
                      textVPadding: 18,
                      textColor: Color(0xFF7C8BA0),
                    ),
                    const SizedBox(height: 16),
                    const CustomTextFormField(
                      hint: 'Email/Phone Number',
                      fillColor: Color(0xFFF5F9FE),
                      isFilled: true,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w200,
                      formBorderRadius: 14,
                      textHPadding: 24,
                      textVPadding: 18,
                      textColor: Color(0xFF7C8BA0),
                    ),
                    const SizedBox(height: 16),
                    CustomTextFormField(
                      hint: 'Password',
                      secureText: Visibility.isVisible,
                      suffix: GestureDetector(
                        onTap: () => changeVisibility(),
                          child: Icon(Visibility.isVisible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined)
                      ),
                      suffixIconColor: const Color(0xFF7C8BA0),
                      fillColor: const Color(0xFFF5F9FE),
                      isFilled: true,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w200,
                      formBorderRadius: 14,
                      textHPadding: 24,
                      textVPadding: 18,
                      textColor: const Color(0xFF7C8BA0),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 313,
                      height: 44,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                                color: Color(0xFFF5F9FD),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                          ),
                          const SizedBox(width: 14),
                          const Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'I’m agree to The ',
                                  style: TextStyle(
                                    color: Color(0xFF3A4053),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Terms of Service',
                                  style: TextStyle(
                                    color: Color(0xFF3461FD),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: ' and\n',
                                  style: TextStyle(
                                    color: Color(0xFF3A4053),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Privacy policy',
                                  style: TextStyle(
                                    color: Color(0xFF3461FD),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 22),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF3461FD).withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 20,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: CustomTextButton(
                        buttonName: 'Create Account',
                        tColor: const Color(0xFFFFFFFF),
                        buttonBorderRadius: 14,
                        bgColor: const Color(0xFF3461FD),
                        height: 60,
                        minWidth: 345,
                        // onTop: () => print('pressed'),
                        textFontSize: 16,
                        textFontFamily: 'Poppins',
                        textFontWeight: FontWeight.w500,
                        onTop: () { print('Preesed'); },
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const SizedBox(width: 40),
                        const Text('Do you have account? ',
                            style: TextStyle(
                              color: Color(0xFF3B4054),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w100,
                            )
                        ),
                        GestureDetector(
                          onTap: () => AppNavigate.push(context, const SignInScreen()),
                          child: RichText(
                            text: const TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Sign In',
                                      style: TextStyle(
                                        color: Color(0xFF3461FD),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w100,
                                      )
                                  )
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
