import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home_screen.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          children: [
            const SizedBox(height: 70,),
            Center(child: SvgPicture.asset("assets/face_smaile.svg", width: 300, height: 200, color: Colors.white,)),
            Container(
              child: const Text("5/10", style: TextStyle(fontSize: 30, color: Colors.white),),
            ),
            const SizedBox(height: 50,),
            const Text("Аъло", style: TextStyle(
              fontSize: 50,
              color: Colors.white
            ),),
            const SizedBox(height: 50,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.green,
                backgroundColor: Colors.white,
                elevation: 0.0,
                minimumSize: const Size(340, 50),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                side: const BorderSide(
                    width: 2.0,
                    color: Color(0xFFC6F68D)
                ),
              ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text("Ба кафо")
            )
          ],
        ),
      ),
    );
  }
}
