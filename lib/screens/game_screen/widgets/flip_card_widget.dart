import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:guess_plug/stores/game_store.dart';

class FlipCardWidget extends StatelessWidget {
  const FlipCardWidget(
      {Key? key,
      required this.gameStore,
      required this.index,
      required this.flipCardController})
      : super(key: key);

  final GameStore gameStore;
  final int index;
  final FlipCardController flipCardController;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Observer(
        builder: (_) => FlipCard(
          controller: flipCardController,
          flipOnTouch: gameStore.flipOnTouch,
          onFlipDone: (_) {
            flipCardController.controller?.reverseDuration =
                const Duration(milliseconds: 1800);
            flipCardController.controller?.reverse().whenComplete(
                  () => gameStore.nextAttempt(),
                );

            // Future.delayed(const Duration(milliseconds: 2000)).then((_) {
            //   flipCardController.controller?.reverse().then((_) {
            //     Future.delayed(const Duration(microseconds: 300))
            //         .then((_) => gameStore.nextAttempt());
            //   });
            // });
          },
          onFlip: () {
            if (gameStore.flipOnTouch == false) {
              return;
            } else {
              gameStore.onFlip(gameStore.list[index]);
            }
          },
          direction: FlipDirection.HORIZONTAL,
          front: const _CardWidget(
            color: Colors.blue,
            imageName: "assets/question.png",
          ),
          back: _CardWidget(
            color: gameStore.list[index] == "assets/present.png"
                ? Colors.amberAccent
                : Colors.red,
            imageName: gameStore.list[index],
          ),
        ),
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  const _CardWidget({
    Key? key,
    required this.color,
    required this.imageName,
  }) : super(key: key);
  final Color color;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: Image.asset(
        imageName,
      ),
    );
  }
}
