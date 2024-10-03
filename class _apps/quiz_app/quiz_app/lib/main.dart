import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "who is the founder of  Microsoft?",
      "options": ["steve jobs", "Bill Gates", "Lary page", "Elon musk"],
      "correctAnswer": 1
    },
    {
      "question": "who is the founder of Google?",
      "options": ["steve jobs", "Bill Gates", "Lary page", "Elon musk"],
      "correctAnswer": 2
    },
    {
      "question": "who is the founder of spacex?",
      "options": ["steve jobs", "Bill Gates", "Lary page", "Elon musk"],
      "correctAnswer": 3
    },
    {
      "question": "who is the founder of Apple?",
      "options": ["steve jobs", "Bill Gates", "Lary page", "Elon musk"],
      "correctAnswer": 0
    },
    {
      "question": "who is the founder of Meta ?",
      "options": ["steve jobs", "Bill Gates", "Lary page", "mark Zukerberg"],
      "correctAnswer": 3
    },
  ];
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionpage = true;
  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionpage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "Question:${currentQuestionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestions[currentQuestionIndex]["question"],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    setState(() {});
                  }
                },
                child: Text(
                  "A.${allQuestions[currentQuestionIndex]['options'][0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    setState(() {});
                  }
                },
                child: Text(
                  "B.${allQuestions[currentQuestionIndex]['options'][1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    setState(() {});
                  }
                },
                child: Text(
                  "C.${allQuestions[currentQuestionIndex]['options'][2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    setState(() {});
                  }
                },
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                child: Text(
                  "D.${allQuestions[currentQuestionIndex]['options'][3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedAnswerIndex != -1) {
              if (currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
              } else {
                questionpage = false;
              }
              selectedAnswerIndex = -1;
              setState(() {});
            }
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.white,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://t4.ftcdn.net/jpg/05/93/91/27/360_F_593912714_6pEIEP3YlFQkbwknHEYxQzbne5ZN6BlE.jpg",
                height: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Congratuilations!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Score:5/5 "),
            ],
          ),
        ),
      );
    }
  }
}
