import 'package:first_app/uitls/app_layout.dart';
import 'package:first_app/widgets/rounded_circule.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../uitls/text_style.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            /*
      this Container showing blue part of the card
      */
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
                        ticket["from"]["code"],
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
                        ticket["to"]["code"],
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
                          ticket["from"]["name"],
                          style: Styles.headLine4.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        ticket["from"]["name"],
                        style: Styles.headLine4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["flying_time"],
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
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => const SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*orange doted area completed */
            //bottom part stared
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.only(
                  top: 10, right: 16, left: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ticket["date"],
                        style: Styles.headLine3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "Date",
                        style: Styles.headLine4.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ticket["departure_time"],
                        style: Styles.headLine3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "Departure Time",
                        style: Styles.headLine4.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        ticket["number"].toString(),
                        style: Styles.headLine3.copyWith(color: Colors.white),
                      ),
                      const Gap(5),
                      Text(
                        "NUMBER",
                        style: Styles.headLine4.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //orange part completed
          ],
        ),
      ),
    );
  }
}
