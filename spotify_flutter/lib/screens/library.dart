import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.1),
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/profile.jpg',
                  height: 45,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your Library',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.add),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.featured_play_list),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('Recently played'),
                    )
                  ],
                ),
                Icon(Icons.menu_outlined)
              ],
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://www.businessinsider.in/thumb.cms?msid=76510637&width=1200&height=900',
                  height: 50,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text('AR Rahman'),
              subtitle: Text('Artist'),
            ),
            SizedBox(
              height: 0.1,
              child: Container(color: Colors.grey, height: 1),
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://nettv4u.com/fileman/Uploads/Top-10-Bollywood-Playback-Singers-of-the-New-Era/Arijit_Singh.jpg',
                  height: 50,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text('Arjith Sing'),
              subtitle: Text('Artist'),
            ),
            SizedBox(
              height: 0.1,
              child: Container(color: Colors.grey, height: 1),
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://static.toiimg.com/thumb/msid-75294690,imgsize-48701,width-800,height-600,resizemode-75/75294690.jpg',
                  height: 50,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text('Hari Shankar'),
              subtitle: Text('Artist'),
            ),
            SizedBox(
              height: 0.1,
              child: Container(color: Colors.grey, height: 1),
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://keralainsider.com/wp-content/uploads/2020/07/Screenshot-60.png',
                  height: 50,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text('Sithara Krishnakumar'),
              subtitle: Text('Artist'),
            ),
            SizedBox(
              height: 0.1,
              child: Container(color: Colors.grey, height: 1),
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  'https://nettv4u.com/fileman/Uploads/Top-10-Female-Singers-In-Malayalam/k_s_chithra.jpg',
                  height: 50,
                  width: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text('Ks Chitra'),
              subtitle: Text('Artist'),
            ),
            SizedBox(
              height: 0.1,
              child: Container(color: Colors.grey, height: 1),
            ),
            ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.grey[200],
                      ),
                    ),
                  )),
              title: Text('Add a Artist'),
            ),
            SizedBox(
              height: 0.1,
              child: Container(color: Colors.grey, height: 1),
            ),
            ListTile(
              leading: ClipRRect(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey[200],
                    ),
                  ),
                ),
              ),
              title: Text('Add Podcasts and Shows'),
            ),
            SizedBox(
              height: 0.1,
              child: Container(color: Colors.grey, height: 1),
            ),
          ],
        ),
      ),
    );
  }
}
