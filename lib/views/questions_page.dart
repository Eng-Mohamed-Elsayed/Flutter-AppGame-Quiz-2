import 'package:flutter/material.dart';
import 'package:the_millionaire/components/customChoicesButton.dart';
import 'package:the_millionaire/components/custome_alert.dart';
import 'package:the_millionaire/components/gameInfoRow.dart';
import 'package:the_millionaire/components/helping_icons_row.dart';
import 'package:the_millionaire/components/presentCurrentQuestion.dart';
import 'package:the_millionaire/util/balance_list.dart';
import 'package:the_millionaire/util/question_list.dart';
import 'package:the_millionaire/views/logo_page.dart';

class QuestionsPage extends StatefulWidget {
  static final id = 'QuestionsPage';
  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  QuestionsList questionBank = QuestionsList();
  //*The number of question
  int currentQuestionNum = 1;
  //*The current balance
  int currentBalance = 0;
  // the balance after first wrong answer (loosing game)
  int loosingBalance = 0;
  //* these variable for check if user use 50/50   and switch question or not
  bool is5050Used = false;
  bool isSwitchUsed = false;
  //this variable used to (recognize the choosen answer number)to change background of answer_box
  String userclickedNumber = '0';
// to save the choises btn backgrounds
  Map<String, String> buttonbackground = {
    '1': 'answer_box',
    '2': 'answer_box',
    '3': 'answer_box',
    '4': 'answer_box'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          // main coulmn for all UI elements
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row for helping icons -------------------------------------
              helpingIconsRow(
                is5050UsedValue: is5050Used,
                isSwitchUsedValue: isSwitchUsed,
                withdrawFunction: () {
                  customAlert(
                    context: context,
                    title: "لقد انسحبت من اللعبة",
                    desc: "لقد ربحت $currentBalance ريال سعودي",
                    text: "خروج",
                    onPressed: () {
                      setState(() {
                        reSetGameData();
                      });
                      Navigator.pushNamed(context, LogoPage.id);
                    },
                  ).show();
                },
                functionOF5050: () {
                  setState(() {
                    if (is5050Used == false) {
                      questionBank.removTowOption();
                      is5050Used = true;
                    }
                  });
                },
                switchFunction: () {
                  setState(() {
                    if (isSwitchUsed == false) {
                      questionBank.replaceQuestion();
                      isSwitchUsed = true;
                    }
                  });
                },
              ),

              // Row for present Question number and Balance ----------------------------------
              // this row contain two coloumns, one for balance and one for question number
              gameInfoRow(
                currentBalanceValue: currentBalance,
                currentQustionNumber: currentQuestionNum,
              ),

              // the question ----------------------------------------------------
              presentCurrentQuestion(theQuestion: questionBank.getQuestion()),

              // the options -----------------------------------------------
              // first option
              customChoicesButton(
                buttonPadding: EdgeInsets.fromLTRB(0, 15, 0, 5),
                onPressed: () {
                  if (questionBank.getChoiceOne() != '  ') {
                    setState(() {
                      userclickedNumber = '1';
                    });

                    checkAnswe(questionBank.getChoiceOne());
                  }
                },
                text: questionBank.getChoiceOne(),
                imageName: buttonbackground['1'] ?? '',
              ),
              //second option
              customChoicesButton(
                buttonPadding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                onPressed: () {
                  if (questionBank.getChoiceTwo() != '  ') {
                    setState(() {
                      userclickedNumber = '2';
                    });

                    checkAnswe(questionBank.getChoiceTwo());
                  }
                },
                text: questionBank.getChoiceTwo(),
                imageName: buttonbackground['2'] ?? '',
              ),
              //third option
              customChoicesButton(
                buttonPadding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                onPressed: () {
                  if (questionBank.getChoiceThree() != '  ') {
                    setState(() {
                      userclickedNumber = '3';
                    });

                    checkAnswe(questionBank.getChoiceThree());
                  }
                },
                text: questionBank.getChoiceThree(),
                imageName: buttonbackground['3'] ?? '',
              ),
              // fourth option
              customChoicesButton(
                buttonPadding: EdgeInsets.fromLTRB(0, 5, 0, 15),
                onPressed: () {
                  if (questionBank.getChoiceFour() != '  ') {
                    setState(() {
                      userclickedNumber = '4';
                    });

                    checkAnswe(questionBank.getChoiceFour());
                  }
                },
                text: questionBank.getChoiceFour(),
                imageName: buttonbackground['4'] ?? '',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> checkAnswe(String userPickedAnswer) async {
    String correctAnswer = questionBank.getAnswer();

    setState(() {
      if (userPickedAnswer == correctAnswer) {
        buttonbackground[userclickedNumber] = 'correct';
        currentBalance = ListOfBalance().getNewBalance();
      } else {
        buttonbackground[userclickedNumber] = 'Wrong';
        loosingBalance = ListOfBalance().isLoss();
      }
    });

    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      if (userPickedAnswer != correctAnswer) {
        customAlert(
                context: context,
                onPressed: () {
                  setState(() {
                    reSetGameData();
                  });
                  Navigator.pushNamed(context, LogoPage.id);
                },
                title: 'لقد خسرت',
                desc: "ماربحته في هذه اللعبة هو $loosingBalance ريال سعودي",
                text: 'موافق')
            .show();
      } else if (currentQuestionNum + 1 > 15) {
        customAlert(
          context: context,
          onPressed: () {
            setState(() {
              reSetGameData();
            });
            Navigator.pushNamed(context, LogoPage.id);
          },
          title: "انتهت الأسئلة",
          desc: "مبرووك ! لقد ربحت $currentBalance ريال سعودي",
          text: "موافق",
        ).show();
      } else {
        currentQuestionNum++;
        buttonbackground[userclickedNumber] = 'answer_box';
        questionBank.nextQuestion();
      }
    });
  }

  void reSetGameData() {
    currentQuestionNum = 1;
    currentBalance = 0;
    is5050Used = false;
    isSwitchUsed = false;
    ListOfBalance().resetBalanceCounter();
  }
}
