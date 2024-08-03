import 'package:flutter/material.dart';
import 'pandit_profile_page.dart'; // Import the new page


class CategoryDetailPage extends StatelessWidget {
  final String title;

  CategoryDetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    List<String> details = [];

    if (title == 'Wedding') {
      details = [
        'Marriage', 'Engagement', 'Reception', 'Bridal Makeup (Artist)', 'Pandit',
        'DJ', 'Decoration', 'Comedian (Comical Man)', 'Band (Singers, Drama)', 'Catering',
        'Venue', 'Banquet Hall', 'Park', 'Plots', 'Pool Parties', 'Destination Weddings',
        'Accommodation'
      ];
    } else if (title == 'Corporate') {
      details = [
        'Corporate Events', 'Conferences', 'Product Launches', 'Team Building Activities',
        'Retirement Party', 'Retirement Post'
      ];
    } else if (title == 'DJ/Concert') {
      details = [
        'College Concerts', 'Wedding DJ', 'Corporate DJ', 'Standup Comedy'
      ];
    } else if (title == 'Birthday') {
      details = [
        'Cake', 'Venue', 'Decoration', 'Catering', 'Party Games', 'Invitations',
        'Return Gifts', 'Photography', 'Hosting & Games on Birthday'
      ];
    } else if (title == 'Festival') {
      details = [
        'Diwali', 'Holi', 'Christmas', 'Eid', 'Raksha Bandhan', 'Navratri', 'Ganesh Chaturthi',
        'New Year', 'Pongal', 'Dussehra', 'Baisakhi', 'Makar Sankranti', 'Onam', 'Janmashtami',
        'Ganpati Mahotsav'
      ];
    } else if (title == 'Religious') {
      details = [
        'Havan', 'Mundan', 'Gender Reveal', 'Godh Bharai', 'Vastu',
        'Navratri', 'Janmashtami', 'New Karwa', 'Other Religious Functions',
        'Hosting Bound for Religious Function'
      ];
    } else if (title == 'Miscellaneous') {
      details = [
        'Janoi', 'Freshers/Farewell', 'Get-Togethers (Reunion)', 'Baby Shower',
        'Annual Day Functions', 'Functions like Dhananjay Day', 'Anniversary',
        'Award Ceremony', 'College Fest/Events'
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
            return GestureDetector(
              onTap: () {
                if (title == 'Wedding' && details[index] == 'Pandit') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PanditProfilePage(),
                    ),
                  );
                }
              },
              child: Container(
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
            ),
            );
          },
        ),
      ),
    );
  }
}
