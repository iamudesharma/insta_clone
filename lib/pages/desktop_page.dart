import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone/constants/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class DesktopPage extends StatefulWidget {
  @override
  _DesktopPageState createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    emailController.addListener(() {
      setState(() {});
    });

    passwordController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: context.screenHeight * 0.9,
        width: context.screenWidth * 0.8,
        color: Constants.instabackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VxBox(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/insta_login_page.png',
                  ),
                  Positioned(
                    bottom: 85,
                    right: 77,
                    child: Image.asset(
                      'assets/images/insta_login_2.jpg',
                    ),
                  )
                ],
              ),
            )
                .size(context.screenWidth * 0.3, context.screenHeight * 0.8)
                .make(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VxBox(
                    child: VStack(
                      [
                        20.heightBox,
                        Text(
                          'Instagram',
                          style: GoogleFonts.alexBrush(
                            color: Colors.black,
                            fontSize: kToolbarHeight * 0.8,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.4,
                          ),
                        ),
                        20.heightBox,
                        textField(
                            'Phone number or username,email',
                            false,
                            context,
                            context.screenWidth * 0.2,
                            emailController),
                        10.heightBox,
                        textField('Password', false, context,
                            context.screenWidth * 0.2, passwordController),
                        20.heightBox,
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Log In'),
                          style: ElevatedButton.styleFrom(
                            primary: emailController.text.isNotEmpty &&
                                    passwordController.text.isNotEmpty
                                ? Constants.disablebluecolor
                                : Constants.blueColor,
                            minimumSize: Size(
                              context.screenWidth * 0.2,
                              50,
                            ),
                            padding: EdgeInsets.all(16),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          height: 1,
                          width: 200,
                        ),
                        20.heightBox,
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                color: Colors.grey,
                                height: 1,
                                width: context.screenWidth * 0.08,
                              ),
                              Text('OR').text.gray400.make().pSymmetric(
                                    h: 10,
                                  ),
                              Container(
                                color: Colors.grey,
                                height: 1,
                                width: context.screenWidth * 0.08,
                              ),
                            ],
                          ),
                        ),
                        20.heightBox,
                        TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                            color: Constants.blueColor,
                          ),
                          label: Text(
                            'Log in with fackbook',
                            style: TextStyle(
                              color: Constants.blueColor,
                            ),
                          ),
                        ),
                        10.heightBox,
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                            ))
                      ],
                      // alignment: MainAxisAlignment.center,
                      crossAlignment: CrossAxisAlignment.center,
                    ),
                  )
                      .border(color: Vx.gray300)
                      .roundedSM
                      .white
                      .size(
                        context.screenWidth * 0.25,
                        context.screenHeight * 0.57,
                      )
                      .make(),
                  VxBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        GestureDetector(
                            child:
                                Text('Sign up').text.blue500.underline.make())
                      ],
                    ),
                  )
                      .border(color: Vx.gray300)
                      .white
                      .size(context.screenWidth * 0.25,
                          context.screenHeight * 0.1)
                      .make(),
                  10.heightBox,
                  'Get the app'.text.xl.makeCentered(),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      VxBox(
                        child: Image.asset(
                          'assets/images/google_play.png',
                        ),
                      ).size(200, 50).make(),
                      VxBox(
                        child: Image.asset(
                          'assets/images/apple_store.png',
                        ),
                      ).size(200, 50).make()
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ).centered(),
    );
  }
}

textField(String hinttext, bool isPassword, BuildContext context, double width,
    TextEditingController controller) {
  return VxBox(
    child: TextField(
      obscureText: isPassword,
      autofocus: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          borderSide: BorderSide(
            color: Colors.grey.shade100.withOpacity(0.5),
            width: 0.7,
          ),
        ),
        fillColor: Constants.instabackground,
        filled: true,
        hintText: hinttext,
        hintStyle: TextStyle(
          fontSize: 12,
        ),
      ),
    ),
  ).size(width, 40).make();
}

divder() {
  return Row(
    children: [
      Divider(
        height: 50,
        indent: 20,
        color: Colors.blueAccent,
      )
    ],
  );
}
