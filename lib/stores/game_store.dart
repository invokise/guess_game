import 'dart:math';
import 'package:mobx/mobx.dart';
part 'game_store.g.dart';

class GameStore = GameStoreBase with _$GameStore;

abstract class GameStoreBase with Store {
  @observable
  int point = 50;

  @observable
  int totalScore = 0;

  @observable
  int attempts = 5;

  @observable
  bool flipOnTouch = true;

  @observable
  bool visibleText = false;

  @observable
  bool visiblePlayAgainButton = false;

  @observable
  List<String> list = [
    "assets/present.png",
    "assets/boom.png",
    "assets/boom.png"
  ];

  @action
  void playAgain() {
    shuffle();
    visibleText = false;
    visiblePlayAgainButton = false;

    flipOnTouch = true;
    totalScore = 0;
    attempts = 5;
  }

  @action
  void onFlip(String image) {
    if (flipOnTouch == false || attempts == 0) {
      return;
    }

    flipOnTouch = false;
    countTotalScore(image);
    attempts--;
  }

  @action
  void nextAttempt() {
    if (attempts > 0) {
      shuffle();
      flipOnTouch = true;
    } else {
      endGame();
    }
  }

  @action
  void shuffle() {
    for (int i = list.length - 1; i >= 1; i--) {
      final j = Random().nextInt(i + 1);
      final temp = list[j];
      list[j] = list[i];
      list[i] = temp;
    }
  }

  @action
  void endGame() {
    visibleText = true;
    visiblePlayAgainButton = true;
    flipOnTouch = false;
  }

  @action
  void countTotalScore(String image) {
    if (image == "assets/present.png") {
      totalScore += point;
    } else {
      totalScore -= point;
    }
  }

  @action
  String resultMessage() {
    if (totalScore > 0 && totalScore < 250) {
      return "Your luck is above average!";
    } else if (totalScore < 0 && totalScore > -250) {
      return "Your luck is below average!";
    } else if (totalScore == 250) {
      return "You are incredibly lucky!";
    } else if (totalScore == -250) {
      return "You're a loser!";
    } else {
      return "You're just a mystery!";
    }
  }
}
