import 'package:flutter/material.dart';
import '../widgets/appBarWidget.dart';
import '../widgets/drawer_widget.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      drawer: DrawerWidget(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'Images/white.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Anirban Sinha Roy',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hello there! I\'m Anirban Sinha Roy, an aspiring Flutter Developer from West Bengal, India. My passion lies in honing my app development skills, and I\'m eager to contribute to Saathi for valuable experience. Securing this internship is crucial for my professional and personal growth. With a strong foundation in Data Structures and Algorithms, I\'m ready to make a meaningful impact through my dedication and skills!',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('Images/Profile.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
