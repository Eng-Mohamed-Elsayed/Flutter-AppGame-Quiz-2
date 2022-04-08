import 'package:the_millionaire/models/questions.dart';

class QuestionsList {
  int _currentQuestion = 0;
  List<Question> _questionsBank = [
    Question(
      question: 'كم استمرت حرب المئة عام؟',
      answer: '١١٦',
      choices: [
        '١١٦',
        '٩٩',
        '١٠٠',
        '١٥٠',
      ],
    ),
    Question(
      question: 'اين تصنع قبعات بنما؟',
      answer: 'الاكوادور',
      choices: [
        'البرازيل',
        'تشيلي',
        'بنما',
        'الاكوادور',
      ],
    ),
    Question(
      question: 'أي هذه الاسماء هو الاسم الاول للملك جورج السادس؟',
      answer: 'ألبرت',
      choices: [
        'جون',
        'ألبرت',
        'جورج',
        'مانويل',
      ],
    ),
    Question(
      question: 'في أي شهر يحتفل الروس بثورة اكتوبر؟',
      answer: 'نوفمبر',
      choices: [
        'يناير',
        'اكتوبر',
        'نوفمبر',
        'سبتمبر',
      ],
    ),
    Question(
      question: 'مالحيوان التي اخذت منه جزر الكناري اسمها؟',
      answer: 'الجرو',
      choices: [
        'الجرو',
        'طائر الكناري',
        'الكنغر',
        'الفأر',
      ],
    ),
    Question(
      question: 'ما اسم الكتاب الذي وضعه "ابن النديم"؟',
      answer: 'الفهرست',
      choices: [
        'كتاب الندماء',
        'الفهرست',
        'الجاسوس على القاموس',
        'معجم ما استعجم',
      ],
    ),
    Question(
      question:
          'من هو صاحب كتاب الجغرافيا الذي يحمل عنوان "آثار البلاد وأخبار العباد"؟',
      answer: 'القزويني',
      choices: [
        'البيروني',
        'المقدسي',
        'الإدريسي',
        'القزويني',
      ],
    ),
    Question(
      question: 'كم عدد الدول العربية التي تطل على البحر الأبيض المتوسط؟',
      answer: '٨ دول',
      choices: [
        '٦ دول',
        '٧ دول',
        '٨ دول',
        '٩ دول',
      ],
    ),
    Question(
      question: 'أعلى شلالات في العالم هي',
      answer: 'سالتو دل انجل',
      choices: [
        'نياغرا',
        'الإغواسو',
        'كيفو',
        'سالتو دل انجل',
      ],
    ),
    Question(
      question: 'من قام بسرقة لوحة "الموناليزا" من متحف اللوفر عام ١٩١١؟',
      answer: 'فينتشينزو بيروجيا',
      choices: [
        'فينتشينزو بيروجيا',
        'إنزو فراتيللي',
        'فيتوريو بوكا',
        'لوتشيو أنطوننيني',
      ],
    ),
    Question(
      question: 'من هو العالم العربي الذي اخترع علم الاجتماع؟',
      answer: 'ابن خلدون',
      choices: [
        'ابن خلدون',
        'الخوارزمي',
        'ابن سينا',
        'الرازي',
      ],
    ),
    Question(
      question: 'ما الإسم الذي أطلقه العرب على المحيط الأطلسي؟',
      answer: 'بحر الظلمات',
      choices: [
        'بحر النور',
        'البحر الأبيض',
        'بحر الظلمات',
        'البحر الأسود',
      ],
    ),
    Question(
      question: 'أول سيف شهر في الإسلام هو سيف',
      answer: 'الزبير بن العوام',
      choices: [
        'عبدالله بن جحش',
        'حمزة بن عبد المطلب',
        'سعد بن أبي وقاص',
        'الزبير بن العوام',
      ],
    ),
    Question(
      question: 'ما أكثر العناصر شيوعاً في الأرض؟',
      answer: 'الأوكسجين',
      choices: [
        'الأوكسجين',
        'الكوارتز',
        'الهيدروجين',
        'الكربون',
      ],
    ),
    Question(
      question: 'ما جنسية الرسام العالمي بيكاسو؟',
      answer: 'إسباني',
      choices: [
        'إيطالي',
        'إسباني',
        'هولندي',
        'أمريكي',
      ],
    ),
    Question(
        question: 'من هو العالم المصري الحاصل على جائزة نوبل؟',
        answer: 'أحمد زويل',
        choices: [
          'علي المشرفة',
          'فاروق الباز ',
          'أحمد زويل',
          'محمد يونس',
        ]),
  ];

// get the current Question text
  String getQuestion() => _questionsBank[_currentQuestion].question;

  // get the current Question answer
  String getAnswer() => _questionsBank[_currentQuestion].answer;

  // get the current Question choice1
  String getChoiceOne() => _questionsBank[_currentQuestion].choices[0];

  // get the current Question choice2
  String getChoiceTwo() => _questionsBank[_currentQuestion].choices[1];

  // get the current Question choice3
  String getChoiceThree() => _questionsBank[_currentQuestion].choices[2];

  // get the current Question choice4
  String getChoiceFour() => _questionsBank[_currentQuestion].choices[3];

// update current question number, if the questions fininshed the value will reset to 0
  bool nextQuestion() {
    if (_currentQuestion < 15) {
      //_questionsBank.length - 1
      _currentQuestion++;
      return true;
    } else {
      _currentQuestion = 0;
      return false;
    }
  }

  //* 50/50 function: used when the user want to remove tow option
  void removTowOption() {
    //*this variable is for loop counter
    int counter = 0;
    //*this variable used to insure that the options thant remove does not exceed 2
    int myCoun = 0;
    for (counter = 0; counter <= 3; counter++) {
      if (_questionsBank[_currentQuestion].choices[counter] !=
              _questionsBank[_currentQuestion].answer &&
          myCoun <= 1) {
        _questionsBank[_currentQuestion].choices[counter] = '  ';
        myCoun++;
      }
    }
  }

  //* Replace Question is to skip the current question
  void replaceQuestion() {
    _currentQuestion++;
  }
}
