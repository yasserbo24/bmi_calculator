import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback onIncreament;
  final VoidCallback onDecreament;
  const InfoCard({
    super.key,
    required this.title,
    required this.value,
    required this.onIncreament,
    required this.onDecreament,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),

      child: Column(
        children: [
          Text(title, style: TextStyle(fontSize: 20)),
          Text(
            '$value',
            style: TextStyle(fontSize: 65, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          // i should change it
          // TODO change it
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _circleButton(Icons.minimize, onDecreament),
              _circleButton(Icons.add, onIncreament),
            ],
          ),
        ],
      ),
    );
  }

  Widget _circleButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      customBorder: CircleBorder(),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.deepPurple,
        ),
        child: Icon(icon, color: Colors.white, size: 25),
      ),
    );
  }
}
