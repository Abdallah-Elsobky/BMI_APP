import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  final double sliderValue;
  final double min;
  final double max;
  late final ValueChanged<double> onChanged;

  CustomSlider({
    required this.sliderValue,
    required this.min,
    required this.max,
  });

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  late double _currentSliderValue;

  @override
  void initState() {
    super.initState();
    _currentSliderValue = widget.sliderValue;
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbShape: PointerSliderThumb(), // Set custom pointer shape for thumb
      ),
      child: Slider(
        value: _currentSliderValue,
        min: widget.min,
        max: widget.max,
        onChanged: (value) {
          setState(() {
            _currentSliderValue = value;
          });
          // widget.onChanged(value); // Notify parent widget about the change
        },
      ),
    );
  }
}

// Custom thumb shape that looks like a pointer
class PointerSliderThumb extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(30, 30); // Size of the pointer thumb
  }

  @override
  void paint(
      PaintingContext context,
      Offset center, {
        required Animation<double> activationAnimation,
        required Animation<double> enableAnimation,
        required bool isDiscrete,
        required TextPainter labelPainter,
        required RenderBox parentBox,
        required SliderThemeData sliderTheme,
        required TextDirection textDirection,
        required double value,
        required double textScaleFactor,
        required Size sizeWithOverflow,
      }) {
    final Canvas canvas = context.canvas;
    final paint = Paint()
      ..color = Colors.blue // Color of the pointer
      ..style = PaintingStyle.fill;

    // Define the pointer shape (triangle)
    Path pointerPath = Path();
    pointerPath.moveTo(center.dx, center.dy - 20); // Top point of the pointer
    pointerPath.lineTo(center.dx - 10, center.dy + 10); // Bottom left corner
    pointerPath.lineTo(center.dx + 10, center.dy + 10); // Bottom right corner
    pointerPath.close(); // Complete the triangle

    // Draw the pointer shape
    canvas.drawPath(pointerPath, paint);
  }
}
