import 'package:chat_ui/color/color.dart';
import 'package:chat_ui/screen/chat_home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  "A new way to connect\nwith your friends",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: textColor,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: size.height * 0.4,
                    width: size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1.2,
                        color: Colors.black12.withOpacity(0.05),
                      ),
                      borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 36,
                    child: Container(
                      height: size.height * 0.31,
                      width: size.width * 0.67,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.2,
                          color: Colors.black12.withOpacity(0.09),
                        ),
                        borderRadius: BorderRadius.circular(200),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 110,
                    child: SizedBox(
                      height: size.height * 0.9,
                      width: size.width * 0.3,
                      child: Column(
                        children: [
                          Image.asset(
                            "images/chat.png",
                          ),
                          Text(
                            "CHAT APP",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 23,
                              color: primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.07),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatHomePage(),
                    ),
                  );
                },
                child: Container(
                  height: 65,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: primaryColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      right: 5,
                      left: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.arrow_forward),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
