import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
        "Cep telefonu sinyali olmayan, ıssız, dolambaçlı bir yolda arabanın lastiği patladı. Otostop yapmaya karar veriyorsun. Paslı bir kamyonet gürleyerek yanında duruyor. Geniş kenarlı şapkası, ruhsuz bakışları ile bir adam yolcu kapısını açıp 'Binmek ister misin?' diye soruyor.",
        choice1: 'Evet isterim, yardım için teşekkürler.',
        choice2: 'Ona katil olup olmadığını sor.'),
    Story(
        storyTitle: 'Kamyonet şoförü sorudan etkilenmeden yavaşça başını salladı.',
        choice1: 'En azından dürüst biri. Kamyonete bin.',
        choice2: 'Bekle, lastik değiştirmeyi biliyorum, arabaya dön.'),
    Story(
        storyTitle:
        "Kamyonet hareket etmeye başladığında, şoför annesiyle olan kötü ilişkisinden bahsetmeye başlar. Dakikalar geçtikçe, anlattıkça daha da sinirlenir. Torpido gözünü açmanı ister. Açtığında içinde kanlı bir bıçak, iki kesik parmak ve Tarkan'ın bir kaseti var. Torpidoya uzanıyorsun.",
        choice1: "Tarkan'ı çok severim. Kaseti tak, dinleyelim.",
        choice2: 'Ya o ya ben! Bıçağı al ve onu bıçakla.'),
    Story(
        storyTitle:
        "Ne? Böyle bir kaçış! Ölümlü ve yaralanmalı trafik kazalarının %88'inin sürücü hatası nedeni ile gerçekleştiğini biliyor muydun?",
        choice1: 'Tekrar Oyna',
        choice2: ''),
    Story(
        storyTitle:
        "Şoförü bıçaklıyorsun ve kamyonetin hakimiyeti bir anda kaybolup, yol kenarındaki kayalık araziye doğru taklalar atarken, kanlar içinde bıçaklamanın ne kadar bilgece(!) olduğunu düşünüyorsun.",
        choice1: 'Tekrar Oyna',
        choice2: ''),
    Story(
        storyTitle:
        "'Oynama Şıkıdım Şıkıdım' dizelerini mırıldanırken katille bağ kuruyorsun. Seni yol üzerindeki bir lastikçiye bırakıyor. Gitmeden önce cesetleri atacak iyi bir yer bilip bilmediğini soruyor. Cevap veriyorsun: 'İskeleyi Dene'",
        choice1: 'Tekrar Oyna',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int userChoice) {
    if (_storyNumber == 0 && userChoice == 1) {
      _storyNumber = 2;
    }
    else if (_storyNumber == 0 && userChoice == 2) {
      _storyNumber = 1;
    }
    else if (_storyNumber == 1 && userChoice == 1) {
      _storyNumber = 2;
    }
    else if (_storyNumber == 1 && userChoice == 2) {
      _storyNumber = 3;
    }
    else if (_storyNumber == 2 && userChoice == 1) {
      _storyNumber = 5;
    }
    else if (_storyNumber == 2 && userChoice == 2) {
      _storyNumber = 4;
    }
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      reset();
    }
  }

  void reset() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}