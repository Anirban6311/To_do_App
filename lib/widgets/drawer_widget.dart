import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/Screens/aboutme.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Screens/home.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: Drawer(
        backgroundColor: Colors.cyanAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 89,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                ),
                child:
                Text(
                  'Menu',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Home',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            ExpansionTile(
              title: Text('Places',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),),
              children: [
                ListTile(title: Text('Bali',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),),
      onTap: () => _launchURL('https://holidayz.makemytrip.com/holidays/india/search?dest=Bali'),
                ),
                ListTile(title: Text('Goa',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                  onTap: () => _launchURL('https://holidayz.makemytrip.com/holidays/india/search?dest=Goa'),),
                ListTile(title: Text('Thailand',
                  style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),),
                  onTap: () => _launchURL('https://holidayz.makemytrip.com/holidays/india/search?dest=Thailand'),),
              ],

            ),

            ListTile(
              title: Text('About Creator',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                ),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMe()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
