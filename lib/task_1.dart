import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  double scaleFactor = 1.0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        scaleFactor = scaleFactor == 1.0 ? 0.2 : 1.0;
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Slack Profile'),
          centerTitle: true,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              color: Colors.grey,
              height: 1,
            ),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 96,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Oben Ayuk Gilbert Abunaw',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
              ),
              AnimatedContainer(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                transformAlignment: Alignment.center,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                transform:
                    Matrix4.identity().scaled(scaleFactor, scaleFactor, 1.0),
                child: TextButton(
                    onPressed: () {
                      launchUrl(
                          Uri.parse(
                            'https://github.com/OGZod',
                          ),
                          mode: LaunchMode.inAppWebView);
                    },
                    child: const Text(
                      'Open Github',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
