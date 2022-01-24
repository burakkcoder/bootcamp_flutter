import "question.dart";

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [ // bu şekilde yazarak _questionbank ı özel hale getirdik. ama aynı class içinde erişebilirim. özel yapmamın nedeni program içinde değiştirilmesin diye.
    Question(q:"İnsan DNA'sı %50 oranında salatalık DNA'sı ile aynıdır.", a:false),
    Question(q:"Ahtapotların 3 tane kalbi vardır.", a:true),
    Question(q:"Altın en iyi iletkendir.", a:false),
    Question(q:"Dünyadaki en kısa savaş 2 saat sürmüştür.", a:false),
    Question(q:"Namaz, Arapça kökenli bir kelimedir.", a:false),
    Question(q:"Dinozorlar olmasaydı kuşlar olmazdı.", a:true),
    Question(q:"Barcelona, İspanya'nın başkentidir.", a:false),
    Question(q:"Uganda'da yaşayan Buganda insanları Luganda konuşur.", a:true),
    Question(q:"-1,1 sayısı -1,01'den daha büyüktür.", a:false),
    Question(q:"Dünyadaki tüm yeni doğmuş bebekler La notasıyla ağlar.", a:true),
    Question(q:"Bazı filler popolarından nefes alabilirler.", a:false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber += 1;
    };
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    }
    else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}