import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Activity ',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: '(03)',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff7271d6),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              const Text("Settings");
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: List.generate(6, (index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: ActivityCard(),
          );
        }),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color(0xffe8e6ff),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 24.0,
            backgroundImage: AssetImage('assets/images/deadpool.jpg'),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Ramy Hany ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '\nliked ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: '"Autumn in my heart"',
                        style: TextStyle(
                          color: Color(0xff7271d6),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 4.0),
                const Text(
                  '2 minutes ago',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12.0),
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: const DecorationImage(
                image: AssetImage('assets/images/maxresdefault.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 12.0),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Color(0xff7271d6),
            ),
          ),
        ],
      ),
    );
  }
}
