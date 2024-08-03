import 'package:flutter/material.dart';

class CategoryDetailPage extends StatelessWidget {
  final String title;

  CategoryDetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    List<String> details = [];

    if (title == 'Wedding') {
      details = [
        'Maharaj', 'Venue', 'Decoration', 'Catering', 'Kankotri',
        'Photography', 'Makeup', 'Mehendi', 'Choreography', 'Anchor',
        'Appearance', 'Baarat', 'Sounds', 'Lights', 'Hampers',
        'Entry', 'Holiday Package'
      ];
    } else if (title == 'Corporate') {
      details = ['Conferences', 'Product Launches', 'Team Building Activities'];
    } else if (title == 'DJ/Concert') {
      details = ['College Concerts', 'Wedding DJ', 'Corporate DJ', 'Standup Comedy'];
    } else if (title == 'Birthday') {
      details = ['Cake', 'Venue', 'Decoration', 'Catering', 'Party Games', 'Invitations', 'Return Gifts', 'Photography'];
    } else if (title == 'Festival') {
      details = [
        'Diwali', 'Holi', 'Christmas', 'Eid', 'Raksha Bandhan',
        'Navratri', 'Ganesh Chaturthi', 'New Year', 'Pongal', 'Dussehra',
        'Baisakhi', 'Makar Sankranti', 'Onam', 'Janmashtami'
      ];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('$title Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: details.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  details[index],
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
