import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_clone/constants/constants.dart';
import 'package:insta_clone/data/user_data.dart';
import 'package:insta_clone/pages/desktop_page.dart';
import 'package:velocity_x/velocity_x.dart';

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  _MobilePageState createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        SizedBox(
          height: kToolbarHeight * 2,
        ),
        Container(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                          context.screenWidth * 0.7,
                          emailController,
                        ),
                        10.heightBox,
                        textField(
                          'Password',
                          false,
                          context,
                          context.screenWidth * 0.7,
                          passwordController,
                        ),
                        20.heightBox,
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MoblieHomePage(),
                              ),
                            );
                          },
                          child: Text('Log In'),
                          style: ElevatedButton.styleFrom(
                            // alignment: Alignment.center,
                            enableFeedback: true,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                            ),
                          ),
                        )
                            .box
                            .size(
                              context.screenWidth * 0.7,
                              40,
                            )
                            .make(),
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
                                width: context.screenWidth * 0.3,
                              ),
                              Text('OR').text.gray400.make().pSymmetric(
                                    h: 10,
                                  ),
                              Container(
                                color: Colors.grey,
                                height: 1,
                                width: context.screenWidth * 0.3,
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
                            'Log in with Facebook',
                            style: TextStyle(
                              color: Constants.blueColor,
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        10.heightBox,
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot password?',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ))
                      ],
                      // alignment: MainAxisAlignment.center,
                      crossAlignment: CrossAxisAlignment.center,
                    ),
                  )
                      .border(color: Vx.gray300)
                      .white
                      .withRounded(
                        value: 10,
                      )
                      .size(
                        context.screenWidth * 0.9,
                        context.screenHeight * 0.5,
                      )
                      .make(),
                  20.heightBox,
                  VxBox(
                          child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                      ),
                      GestureDetector(
                          child:
                              Text('Sign up').text.blue500.xl.underline.make())
                    ],
                  ))
                      .border(color: Vx.gray300)
                      .white
                      .size(
                        context.screenWidth * 0.9,
                        context.screenHeight * 0.08,
                      )
                      .make(),
                  20.heightBox,
                  'Get the app'.text.xl.makeCentered(),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      VxBox(
                        child: Image.asset(
                          'assets/images/google_play.png',
                        ),
                      ).size(context.screenWidth * 0.4, 50).make(),
                      VxBox(
                        child: Image.asset(
                          'assets/images/apple_store.png',
                        ),
                      ).size(context.screenWidth * 0.4, 50).make()
                    ],
                  ),
                  100.heightBox,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class MoblieHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.add_a_photo_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Instagram',
          style: GoogleFonts.aBeeZee(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              FontAwesomeIcons.facebookMessenger,
              size: 30,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ],
      ),
      body: Container(
        width: context.screenWidth,
        height: context.screenHeight,
        child: ListView(
          children: [
            StoryItem(),
            Divider(),
            FeedPage(),
          ],
        ),
      ),
    );
  }
}

class StoryItem extends StatefulWidget {
  @override
  _StoryItemState createState() => _StoryItemState();
}

class _StoryItemState extends State<StoryItem> {
  ScrollController stroyController = ScrollController();
  @override
  void initState() {
    super.initState();
    stroyController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: context.screenWidth,
        height: context.screenHeight * 0.11,
        // color: Colors.black,
        child: ListView.builder(
          controller: stroyController,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: userStory.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StroyViewPage(
                          userStory: userStory, currentindex: index),
                    ),);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Stack(
                      fit: StackFit.loose,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0xfffb3958),
                                Color(0xffffc838),
                                Color(0xff6dc993),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 3.0,
                          left: 2.0,
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                              image: DecorationImage(
                                image: AssetImage(
                                  userStory[index].profile,
                                ),
                              ),
                            ),
                          ),
                        ),
                        userStory.elementAt(index).name == 'Your Stroy'
                            ? Positioned(
                                bottom: 6,
                                right: 6,
                                child: Icon(
                                  Icons.add,
                                ),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                    Text(userStory.elementAt(index).name),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class StroyViewPage extends StatefulWidget {
  final List<UserStory> userStory;
  final int? currentindex;
  const StroyViewPage({
    Key? key,
    required this.userStory,
    @required this.currentindex,
  }) : super(key: key);
  @override
  _StroyViewPageState createState() => _StroyViewPageState();
}

class _StroyViewPageState extends State<StroyViewPage> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController(
      keepPage: true,
      initialPage: widget.currentindex ?? 0,
    );
    super.initState();
  }

  autochangeStory() async {
    await Future.delayed(Duration(seconds: 10));
    await pageController.nextPage(
        duration: Duration(microseconds: 200), curve: Curves.bounceIn);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: widget.userStory.length,
      controller: pageController,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            autochangeStory();
          },
          onTapDown: (
            dec,
          ) {
            pageController.nextPage(
                duration: Duration(microseconds: 200), curve: Curves.bounceIn);
          },
          child: Container(
            child: Image.asset(
              widget.userStory[index].videoorPhoto,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: feed
            .mapIndexed(
              (currentValue, index) => Container(
                padding: EdgeInsets.only(
                  top: index == 0 ? 0 : 20,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              currentValue.user.profile.circularAssetImage(
                                radius: 20,
                                bgColor: Vx.randomColor,
                              ),
                              20.widthBox,
                              currentValue.user.name.text.make(
                                key: ValueKey(
                                  index.toString(),
                                ),
                              )
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert_rounded,
                            ),
                          )
                        ],
                      ),
                    ),
                    VxBox(
                        child: Image.asset(
                      currentValue.user.videoorPhoto,
                      fit: BoxFit.cover,
                    )).make(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite_border),
                            Icon(Icons.comment),
                            Icon(Icons.share_outlined)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.download_outlined),
                            Icon(Icons.save),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
