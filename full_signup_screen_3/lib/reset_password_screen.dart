import 'package:flutter/material.dart';
import 'custom_app_navigator.dart';
import 'custom_text_button.dart';
import 'custom_text_form_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 37),
            GestureDetector(
              onTap: () => AppNavigate.pop(context),
              child: const Row(
                children: [SizedBox(width: 24), Icon(Icons.arrow_back)],
              ),
            ),
            const SizedBox(height: 28),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    'Reset Password',
                    style: TextStyle(
                      color: Color(0xFF2A4ECA),
                      fontSize: 32,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
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
                  SizedBox(height: 24),
                  CustomTextFormField(
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
                ],
              ),
            ),
            const SizedBox(height: 32),
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
                onTop: () { print('Preesed'); },
                // onTop: () => print('Pressed'),
                textFontSize: 16,
                textFontFamily: 'Poppins',
                textFontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 388),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 32,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: Color(0xFF3461FD),
                        borderRadius: BorderRadius.all(Radius.circular(2),)
                    )
                ),
                const SizedBox(width: 14),
                Container(
                    width: 32,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: Color(0xFFD6DFFF),
                        borderRadius: BorderRadius.all(Radius.circular(2),)
                    )
                ),
                const SizedBox(width: 14),
                Container(
                    width: 32,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: Color(0xFFD6DFFF),
                        borderRadius: BorderRadius.all(Radius.circular(2),)
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
