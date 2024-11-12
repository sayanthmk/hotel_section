// import 'package:flutter/material.dart';
// import 'package:hotel_admin/constants/colors/colors.dart';
// import 'package:hotel_admin/controller/auth_service/auth_service.dart';
// import 'package:hotel_admin/view/auth/phone.dart';
// import 'package:hotel_admin/view/auth/register.dart';
// import 'package:hotel_admin/view/home_page/sample_page.dart';
// import 'package:hotel_admin/widgets/auth_widgets/bottom_text_row.dart';
// import 'package:hotel_admin/widgets/auth_widgets/divider.dart';
// import 'package:hotel_admin/widgets/auth_widgets/gradiant_button.dart';
// import 'package:hotel_admin/widgets/auth_widgets/textfrom_field.dart';
// import 'package:provider/provider.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class LoginPage extends StatelessWidget {
//   final formKey = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final authService = Provider.of<AuthService>(context);

//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           if (constraints.maxWidth > 600) {
//             return _buildWideLayout(context, authService, constraints);
//           } else {
//             return _buildNarrowLayout(context, authService);
//           }
//         },
//       ),
//     );
//   }

//   Widget _buildWideLayout(BuildContext context, AuthService authService,
//       BoxConstraints constraints) {
//     return Row(
//       children: [
//         Expanded(
//           flex: 1,
//           child: Center(
//             child: SizedBox(
//               width: 400, // Reduced width for web
//               child: _buildLoginForm(context, authService),
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 1,
//           child: _buildImageSection(height: 750), // 600 pixels for web
//         ),
//       ],
//     );
//   }

//   Widget _buildNarrowLayout(BuildContext context, AuthService authService) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           _buildImageSection(height: 200), // 200 pixels for mobile
//           _buildLoginForm(context, authService),
//         ],
//       ),
//     );
//   }

//   Widget _buildLoginForm(BuildContext context, AuthService authService) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Form(
//         key: formKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             const Text(
//               'StayWise',
//               style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'Welcome Back',
//               style: TextStyle(fontSize: 24),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 40),
//             CustomTextFormField(
//               controller: emailController,
//               labelText: 'Email',
//               hintText: 'Enter your email',
//               keyboardType: TextInputType.emailAddress,
//               textInputAction: TextInputAction.next,
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Email is required';
//                 } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-z]{2,7}$')
//                     .hasMatch(value)) {
//                   return 'Please enter a valid email address';
//                 }
//                 return null;
//               },
//               borderColor: Colors.grey,
//               focusedBorderColor: AdminColors.primerybuttoncolor,
//               enabledBorderColor: Colors.grey,
//               errorBorderColor: Colors.red,
//             ),
//             const SizedBox(height: 20),
//             CustomTextFormField(
//               controller: passwordController,
//               labelText: 'Password',
//               hintText: 'Enter your Password',
//               keyboardType: TextInputType.visiblePassword,
//               textInputAction: TextInputAction.done,
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Password is required';
//                 } else if (value.length < 6) {
//                   return 'Password must be at least 6 characters';
//                 }
//                 return null;
//               },
//               borderColor: Colors.grey,
//               focusedBorderColor: AdminColors.primerybuttoncolor,
//               enabledBorderColor: Colors.grey,
//               errorBorderColor: Colors.red,
//               obscureText: true,
//               suffixIcon: const Icon(Icons.remove_red_eye),
//             ),
//             const SizedBox(height: 30),
//             CustomButton(
//               text: "Login",
//               onTap: () async {
//                 if (formKey.currentState!.validate()) {
//                   try {
//                     await authService.signInWithEmailAndPassword(
//                       emailController.text,
//                       passwordController.text,
//                     );
//                     Navigator.of(context).pushReplacement(MaterialPageRoute(
//                       builder: (context) => SamplePage(),
//                     ));
//                   } catch (e) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                           content: Text('Failed to sign in: ${e.toString()}')),
//                     );
//                   }
//                 }
//               },
//               color: AdminColors.primerybuttoncolor,
//               textColor: Colors.white,
//               borderRadius: 5.0,
//               padding: const EdgeInsets.symmetric(vertical: 15.0),
//               fontSize: 16.0,
//               fontWeight: FontWeight.bold,
//               height: 50,
//               width: double.infinity,
//             ),
//             const SizedBox(height: 20),
//             const DividerWithText(
//               text: 'or',
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               textColor: Colors.grey,
//               dividerColor: Colors.grey,
//               thickness: 2,
//               indent: 10,
//               endIndent: 10,
//             ),
//             const SizedBox(height: 20),
//             CustomButton(
//               text: "Sign In With Google",
//               onTap: () async {
//                 await authService.signInWithGoogle();
//               },
//               color: Colors.white,
//               textColor: Colors.black,
//               borderRadius: 5.0,
//               padding: const EdgeInsets.symmetric(vertical: 15.0),
//               fontSize: 16.0,
//               fontWeight: FontWeight.bold,
//               height: 50,
//               width: double.infinity,
//               icon: FontAwesomeIcons.google,
//             ),
//             const SizedBox(height: 20),
//             // CustomButton(
//             //   text: "Continue With Phone",
//             //   onTap: () {
//             //     Navigator.push(
//             //       context,
//             //       MaterialPageRoute(builder: (context) => PhoneInputPage()),
//             //     );
//             //   },
//             //   color: Colors.white,
//             //   textColor: AdminColors.primerybuttoncolor,
//             //   borderRadius: 5.0,
//             //   padding: const EdgeInsets.symmetric(vertical: 15.0),
//             //   fontSize: 16.0,
//             //   fontWeight: FontWeight.bold,
//             //   height: 50,
//             //   width: double.infinity,
//             //   icon: FontAwesomeIcons.phone,
//             // ),
//             const SizedBox(height: 20),
//             SignInRow(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SignUpPage()),
//                 );
//               },
//               signInText: 'Sign Up',
//               promptText: 'Create an account? ',
//               signInTextColor: AdminColors.primerybuttoncolor,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildImageSection({required double height}) {
//     return Container(
//       height: height,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/images/login_background.jpg'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Container(
//         color: Colors.black.withOpacity(0.3),
//         child: Center(
//           child: Text(
//             'Welcome to StayWise',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//     );
//   }
// }

//                 // Right Section (Image)
//                 // Container(
//                 //   width: 600,
//                 //   height: 400,
//                 //   decoration: BoxDecoration(
//                 //     color: Colors.yellow,
//                 //     // image: DecorationImage(
//                 //     //   image: AssetImage('assets/images/login_image.jpg'),
//                 //     //   fit: BoxFit.cover,
//                 //     // ),
//                 //   ),
//                 // ),
// //               ],
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
