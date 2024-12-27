import 'dart:ui';
import 'dart:math';
import 'package:flutter/material.dart';



class JuiceGlassApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JuiceGlassScreen(),
    );
  }
}

class JuiceGlassScreen extends StatefulWidget {
  @override
  _JuiceGlassScreenState createState() => _JuiceGlassScreenState();
}

class _JuiceGlassScreenState extends State<JuiceGlassScreen> {
  double glassHeight = 300; // Default height (medium size)
  Color juiceColor = Colors.transparent; // Initial juice color
  List<Color> fruitColors = []; // List of added fruit colors

  // Function to change glass size
  void changeGlassSize(String size) {
    setState(() {
      if (size == 'S') {
        glassHeight = 250;
      } else if (size == 'M') {
        glassHeight = 300;
      } else if (size == 'L') {
        glassHeight = 350;
      }
    });
  }

  // Function to add fruit and blend colors
  void addFruit(Color color) {
    setState(() {
      fruitColors.add(color);
      juiceColor = blendColors(fruitColors);
    });
  }

  // Function to blend colors
  Color blendColors(List<Color> colors) {
    if (colors.isEmpty) return Colors.transparent;
    int r = 0, g = 0, b = 0;
    for (var color in colors) {
      r += color.red;
      g += color.green;
      b += color.blue;
    }
    int length = colors.length;
    return Color.fromARGB(255, (r ~/ length), (g ~/ length), (b ~/ length));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Juice Glass Display
          Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // Glass Image
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOutBack,
                  width: glassHeight / 2,
                  height: glassHeight,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/glass.png'), // Replace with your glass image asset
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // Juice Color
                AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                  width: glassHeight / 2 - 20,
                  height: glassHeight - 20,
                  decoration: BoxDecoration(
                    color: juiceColor.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),

          // Fruit Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFruitButton(
                '🍋',
                Colors.yellow,
              ),
              _buildFruitButton(
                '🍇',
                Colors.purple,
              ),
              _buildFruitButton(
                '🍓',
                Colors.red,
              ),
              _buildFruitButton(
                '🥝',
                Colors.green,
              ),
            ],
          ),
          const SizedBox(height: 30),

          // Size Selector
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ['S', 'M', 'L'].map((size) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ElevatedButton(
                  onPressed: () => changeGlassSize(size),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        glassHeight == _getGlassSize(size) ? Colors.orange : Colors.grey[300],
                    foregroundColor: glassHeight == _getGlassSize(size)
                        ? Colors.white
                        : Colors.black,
                  ),
                  child: Text(size),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  // Helper to create fruit button
  Widget _buildFruitButton(String emoji, Color color) {
    return GestureDetector(
      onTap: () => addFruit(color),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 60,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.7),
          ),
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }

  // Helper to get glass size height
  double _getGlassSize(String size) {
    if (size == 'S') return 250;
    if (size == 'M') return 300;
    return 350; // Large
  }
}
