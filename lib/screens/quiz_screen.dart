import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/screens/success_screen.dart';

import '../bloc/question/question_bloc.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key, required this.title}) : super(key: key);

  final String title;


  static const routeName = "quiz";

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final PageController _pageController = PageController();
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.green,
    backgroundColor: Colors.white,
    elevation: 0.0,
    minimumSize: const Size(340, 50),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    side: const BorderSide(
        width: 2.0,
        color: Colors.grey
    ),
  );

  int count = 5;
  String minute = "0";
  String second = "0";
  int page = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        setState(() {

          if(count == 0){
            if(page==9){
              timer.cancel();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SuccessScreen()),
                );
            }
            count=5;
            _pageController.nextPage(
                duration: const Duration(milliseconds: 250), curve: Curves.ease);
          }else{
            count--;
          }
          if(count / 60 >= 0){
            int minutes = (count / 60).truncate();
            if((count % 60) < 10){
              second = (count % 60).toString().padLeft(2, '0');
            }else {
              second = (count % 60).toString();
            }
            if((minutes % 60) < 10){
              minute = (minutes % 60).toString().padLeft(2, '0');
            }else {
              minute = ((count / 60).truncate()).toString();
            }
          }else{
            second = count.toString();
            minute = "00";
          }
        });
      },
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: Text(widget.title),
            actions: const [
              Icon(Icons.more_vert)
            ],
          ),
          body: BlocConsumer<QuestionBloc, QuestionState>(
            listener: (context, state) {
            },
            builder: (context, state) {
              return Container(
                      height: MediaQuery.of(context).size.height,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 8,),
                          Expanded(
                            child: PageView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                controller: _pageController,
                                onPageChanged: (index) {
                                  page++;
                                  count = 5;
                                },
                                itemCount: state.questions.length,
                                itemBuilder: (context, index) => Center(
                                  child: Stack(
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                padding: const EdgeInsets.all(8),
                                                decoration: const BoxDecoration(
                                                  color: Color(0xFFC6F68D),
                                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(15))
                                                ),
                                                child: Text(
                                                  state.questions[index]!.title,
                                                  style: const TextStyle(
                                                      fontSize: 25
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: MediaQuery.of(context).size.height / 20,),
                                              _buttonOption(state.questions[index]!.A),
                                              const SizedBox(
                                                height: 15
                                              ),
                                              _buttonOption(state.questions[index]!.B),
                                              const SizedBox(
                                                  height: 15
                                              ),
                                              _buttonOption(state.questions[index]!.C),
                                              const SizedBox(
                                                  height: 15
                                              ),
                                              _buttonOption(state.questions[index]!.D),
                                              const SizedBox(
                                                  height: 15
                                              ),
                                            ],
                                          )
                                      ),
                                      Positioned(
                                        child: Align(
                                          alignment: FractionalOffset.bottomCenter,
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    SvgPicture.asset("assets/clock.svg", height: 40,),
                                                    const SizedBox(width: 10,),
                                                    Text("$minute:$second")
                                                  ],
                                                ),
                                                Text("${index+1}/10"),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    _pageController.nextPage(
                                                        duration: const Duration(milliseconds: 250), curve: Curves.ease);
                                                    count=5;
                                                    if(index == (state.questions.length-1)){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => const SuccessScreen()),
                                                      );
                                                    }
                                                  },
                                                  child: const Text('Next'),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ],
                      ),
                    );
            },
          ),
        );
  }
  Widget _buttonOption(String title){
    return ElevatedButton(
      onPressed: () {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 250), curve: Curves.ease);
      },
      style: raisedButtonStyle,
      child: Text(title, style: const TextStyle(color: Colors.black),),
    );
  }
}
