import 'package:flutter/material.dart';
import 'package:hotel_admin/controller/auth_service/auth_service.dart';
import 'package:hotel_admin/view/auth/login_page/login_image_section.dart';
import 'package:hotel_admin/view/auth/signup_page/sign_up_custom_page.dart';

import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideLayout(context, authService, constraints);
          } else {
            return _buildNarrowLayout(context, authService);
          }
        },
      ),
    );
  }

  Widget _buildWideLayout(BuildContext context, AuthService authService,
      BoxConstraints constraints) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: ImageSection(
            height: 750,
            imagePath: 'assets/images/checkout.jpg',
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: SizedBox(
              width: 400,
              child: SignUpCustomForm(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildNarrowLayout(BuildContext context, AuthService authService) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ImageSection(
              height: 200,
              imagePath: 'assets/images/checkout.jpg',
            ),
            SignUpCustomForm(),
          ],
        ),
      ),
    );
  }
}
