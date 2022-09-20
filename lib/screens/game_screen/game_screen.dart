import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:guess_plug/screens/game_screen/widgets/flip_card_widget.dart';
import 'package:guess_plug/stores/game_store.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late final GameStore _gameStore;
  late final FlipCardController _firstFlipCardController;
  late final FlipCardController _secondFlipCardController;
  late final FlipCardController _thirdFlipCardController;

  @override
  void initState() {
    super.initState();
    _gameStore = GameStore();
    _gameStore.shuffle();
    _firstFlipCardController = FlipCardController();
    _secondFlipCardController = FlipCardController();
    _thirdFlipCardController = FlipCardController();
  }

  @override
  void dispose() {
    _firstFlipCardController.controller?.dispose();
    _secondFlipCardController.controller?.dispose();
    _thirdFlipCardController.controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TRY YOUR LUCK"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Find a gift that is in one of the boxes",
            style: TextStyle(fontSize: 20),
          ),
          Observer(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 10),
              child: Visibility(
                visible: _gameStore.visibleText,
                child: Text(
                  _gameStore.resultMessage(),
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Observer(
            builder: (context) => Text(
              "Total Score: ${_gameStore.totalScore}",
              style: const TextStyle(fontSize: 30),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlipCardWidget(
                gameStore: _gameStore,
                index: 0,
                flipCardController: _firstFlipCardController,
              ),
              FlipCardWidget(
                gameStore: _gameStore,
                index: 1,
                flipCardController: _secondFlipCardController,
              ),
              FlipCardWidget(
                gameStore: _gameStore,
                index: 2,
                flipCardController: _thirdFlipCardController,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Observer(
            builder: (context) => Text(
              "Attempts: ${_gameStore.attempts}",
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Observer(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Visibility(
                visible: _gameStore.visiblePlayAgainButton,
                child: ElevatedButton(
                  onPressed: () {
                    _gameStore.playAgain();
                  },
                  child: const Text(
                    'Play Again',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
