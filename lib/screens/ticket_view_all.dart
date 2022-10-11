import 'package:first_app/uitls/app_layout.dart';
import 'package:first_app/widgets/rounded_circule.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../uitls/text_style.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      /*
      this contanir showing blue part of the card
      */
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0XFF495c8f),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "PAK",
                      style: Styles.headLine3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    const MyCircule(),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => const SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white)),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const MyCircule(),
                    Expanded(child: Container()),
                    Text(
                      "KHI",
                      style: Styles.headLine3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                //upper portion of the card completed
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        "Pakistan",
                        style: Styles.headLine4.copyWith(color: Colors.white),
                      ),
                    ),
                    Text(
                      "8H 30M",
                      style: Styles.headLine4.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        "Karachi",
                        style: Styles.headLine4.copyWith(color: Colors.white),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                )
                //middle portion completed
              ],
            ),
          ),
          /*
          blue part of the card completed
          
          */
        ]),
      ),
    );
  }
}
