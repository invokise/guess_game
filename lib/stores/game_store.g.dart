// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GameStore on GameStoreBase, Store {
  late final _$pointAtom = Atom(name: 'GameStoreBase.point', context: context);

  @override
  int get point {
    _$pointAtom.reportRead();
    return super.point;
  }

  @override
  set point(int value) {
    _$pointAtom.reportWrite(value, super.point, () {
      super.point = value;
    });
  }

  late final _$totalScoreAtom =
      Atom(name: 'GameStoreBase.totalScore', context: context);

  @override
  int get totalScore {
    _$totalScoreAtom.reportRead();
    return super.totalScore;
  }

  @override
  set totalScore(int value) {
    _$totalScoreAtom.reportWrite(value, super.totalScore, () {
      super.totalScore = value;
    });
  }

  late final _$attemptsAtom =
      Atom(name: 'GameStoreBase.attempts', context: context);

  @override
  int get attempts {
    _$attemptsAtom.reportRead();
    return super.attempts;
  }

  @override
  set attempts(int value) {
    _$attemptsAtom.reportWrite(value, super.attempts, () {
      super.attempts = value;
    });
  }

  late final _$flipOnTouchAtom =
      Atom(name: 'GameStoreBase.flipOnTouch', context: context);

  @override
  bool get flipOnTouch {
    _$flipOnTouchAtom.reportRead();
    return super.flipOnTouch;
  }

  @override
  set flipOnTouch(bool value) {
    _$flipOnTouchAtom.reportWrite(value, super.flipOnTouch, () {
      super.flipOnTouch = value;
    });
  }

  late final _$visibleTextAtom =
      Atom(name: 'GameStoreBase.visibleText', context: context);

  @override
  bool get visibleText {
    _$visibleTextAtom.reportRead();
    return super.visibleText;
  }

  @override
  set visibleText(bool value) {
    _$visibleTextAtom.reportWrite(value, super.visibleText, () {
      super.visibleText = value;
    });
  }

  late final _$visiblePlayAgainButtonAtom =
      Atom(name: 'GameStoreBase.visiblePlayAgainButton', context: context);

  @override
  bool get visiblePlayAgainButton {
    _$visiblePlayAgainButtonAtom.reportRead();
    return super.visiblePlayAgainButton;
  }

  @override
  set visiblePlayAgainButton(bool value) {
    _$visiblePlayAgainButtonAtom
        .reportWrite(value, super.visiblePlayAgainButton, () {
      super.visiblePlayAgainButton = value;
    });
  }

  late final _$listAtom = Atom(name: 'GameStoreBase.list', context: context);

  @override
  List<String> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<String> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  late final _$GameStoreBaseActionController =
      ActionController(name: 'GameStoreBase', context: context);

  @override
  void playAgain() {
    final _$actionInfo = _$GameStoreBaseActionController.startAction(
        name: 'GameStoreBase.playAgain');
    try {
      return super.playAgain();
    } finally {
      _$GameStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onFlip(String image) {
    final _$actionInfo = _$GameStoreBaseActionController.startAction(
        name: 'GameStoreBase.onFlip');
    try {
      return super.onFlip(image);
    } finally {
      _$GameStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void nextAttempt() {
    final _$actionInfo = _$GameStoreBaseActionController.startAction(
        name: 'GameStoreBase.nextAttempt');
    try {
      return super.nextAttempt();
    } finally {
      _$GameStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void shuffle() {
    final _$actionInfo = _$GameStoreBaseActionController.startAction(
        name: 'GameStoreBase.shuffle');
    try {
      return super.shuffle();
    } finally {
      _$GameStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void endGame() {
    final _$actionInfo = _$GameStoreBaseActionController.startAction(
        name: 'GameStoreBase.endGame');
    try {
      return super.endGame();
    } finally {
      _$GameStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void countTotalScore(String image) {
    final _$actionInfo = _$GameStoreBaseActionController.startAction(
        name: 'GameStoreBase.countTotalScore');
    try {
      return super.countTotalScore(image);
    } finally {
      _$GameStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String resultMessage() {
    final _$actionInfo = _$GameStoreBaseActionController.startAction(
        name: 'GameStoreBase.resultMessage');
    try {
      return super.resultMessage();
    } finally {
      _$GameStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
point: ${point},
totalScore: ${totalScore},
attempts: ${attempts},
flipOnTouch: ${flipOnTouch},
visibleText: ${visibleText},
visiblePlayAgainButton: ${visiblePlayAgainButton},
list: ${list}
    ''';
  }
}
