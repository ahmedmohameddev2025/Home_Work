import 'package:flutter/material.dart';
import 'package:flutter_session12_exercises/main.dart';


class HightSelectionSection extends StatefulWidget {
  const HightSelectionSection({super.key});

  @override
  State<HightSelectionSection> createState() => _HightSelectionSectionState();
}

class _HightSelectionSectionState extends State<HightSelectionSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: const Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HEIGHT',
              style: TextStyle(color: Color(0xFF8D8E98), fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '${BmiModel.height}',
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
                const Text('cm', style: TextStyle(color: Color(0xFF8D8E98))),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 1.0,
                inactiveTrackColor: const Color(0xFF8D8E98),
                activeTrackColor: Colors.white,
                thumbColor: const Color(0xFFEB1555),
                overlayColor: const Color(0x29EB1555),
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),

              ),
              child: Slider(
                value: BmiModel.height.toDouble(),
                min: 120,
                max: 220,
                onChanged: (val) {
                  setState(() {
                    BmiModel.height = val.round();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
