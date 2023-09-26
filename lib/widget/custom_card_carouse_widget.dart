import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class SecondCustomCardWidget extends StatelessWidget {
  final String title;
  final String amount;
  final Color startColor;
  final Color endColor;

  const SecondCustomCardWidget(
      {super.key,
      required this.title,
      required this.amount,
      required this.startColor,
      required this.endColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 200 / 305,
          child: Container(
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0.67, -0.74),
                end: const Alignment(-0.67, 0.74),
                colors: [startColor, endColor],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        amount,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ],
                  )),

                  Expanded(
                    flex: 0,
                      child: Column(
                    children: [
                      const Text(
                        '01/2025',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Text(
                            '**** **** **** 2030',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: SizedBox(
                              child: Image.asset("assets/credit.png"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}



class CustomCardCarouselWidget extends StatelessWidget {
  final List<CardData> cards;

  CustomCardCarouselWidget({super.key, required this.cards});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: cards.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        var card = cards[index];
        return SecondCustomCardWidget(
          title: card.title,
          amount: card.amount,
          startColor: card.startColor,
          endColor: card.endColor,
        );
      },
      options: CarouselOptions(
        aspectRatio: 1, // Based on the aspect ratio of the card.
        enlargeCenterPage: true,
        viewportFraction: 0.5,
        autoPlay: false,
      ),
    );
  }
}

class CardData {
  final String title;
  final String amount;
  final Color startColor;
  final Color endColor;

  CardData({
    required this.title,
    required this.amount,
    required this.startColor,
    required this.endColor,
  });
}

