import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TimerSelectionScreen(),
    );
  }
}

class TimerSelectionScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'icon': Icons.flash_on,
      'label': 'Bullet',
      'options': ['1 min', '1|1', '2|1'],
    },
    {
      'icon': Icons.bolt,
      'label': 'Blitz',
      'options': ['3 min', '3|2', '5 min'],
    },
    {
      'icon': Icons.timer,
      'label': 'Rapid',
      'options': ['10 min', '15|10', '30 min'],
    },
    {
      'icon': Icons.calendar_today,
      'label': 'Daily',
      'options': ['1 day', '3 days', '7 days'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text('Time', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: categories.map((category) {
            return TimerCategory(
              icon: category['icon'],
              label: category['label'],
              options: category['options'],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class TimerCategory extends StatelessWidget {
  final IconData icon;
  final String label;
  final List<String> options;

  const TimerCategory({
    required this.icon,
    required this.label,
    required this.options,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.white),
              const SizedBox(width: 8),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 2.5,
            ),
            itemCount: options.length,
            itemBuilder: (context, index) {
              return TimerOption(option: options[index]);
            },
          ),
        ],
      ),
    );
  }
}

class TimerOption extends StatelessWidget {
  final String option;

  const TimerOption({
    required this.option,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        option,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
