import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeActivityState();
  }
}

class HomeActivityState extends State<InstaHome> {
  List<Color> colorList = [
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.pink,
    Colors.indigo,
    Colors.amber,
    Colors.cyan,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Instagram",style: TextStyle(fontWeight: FontWeight.w800)),
      //   backgroundColor: Colors.white70,
      // ),


      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: SingleChildScrollView(
          child: Column(
              children: [
                AppBar(),
                StoryWidget(colorList: colorList),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),
                PostWidget(),


              ]
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home,color: Colors.black87),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search,color: Colors.black87),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.instagram,color: Colors.black87),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.videoCamera,color: Colors.black87),
            label: 'media',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200/200/?random'),
              radius: 13,
            ),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      height: 50,
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 5),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Instagram",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.heart_broken_sharp)),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.messenger_outline_outlined))
          ],
        ),
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  List<Color> colorList;

  StoryWidget({required this.colorList});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 170,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.white70,
                        margin: EdgeInsets.all(4),
                        child: Column(
                          children: [
                            (index>0)?
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://picsum.photos/200/200/?random',
                              ),
                              radius: 45,
                            ): Stack(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://picsum.photos/200/200/?random',
                                  ),
                                  radius: 45,
                                ),
                                Positioned(
                                    left: 55,
                                    top: 62,
                                    child: Container(
                                        child: Stack(children: [
                                          Icon(Icons.add_circle_outline,color: Colors.white,size: 30),
                                          Positioned(
                                              left:2,
                                              top:2,
                                              child: Icon(Icons.add_circle,color: Colors.blue,size: 26)),]
                                        )))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                'Your story',
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: 50,
                    scrollDirection: Axis.horizontal),
              ),
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: CupertinoColors.lightBackgroundGray,
            )
          ],
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          ContainerBar(),
          ContaintWidget(),
          ContaintBottom(),
        ],
      ),
    );
  }
}

class ContainerBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Row(
              children: [
                Text('rahullsharma'),
                Icon(
                  Icons.check_circle,
                  color: Colors.blueAccent,
                )
              ],
            ),
            subtitle: Text(
                "Bobby Deol, Harshavardhan Rameshwar, Choir. Abrar's Entry | Jamal Kudu | ANIMAL"),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://picsum.photos/200/200/?random',
              ),
            ),
            trailing: Icon(Icons.more_vert),
          );
        },
        itemCount: 1,
      ),
    );
  }
}

class ContaintWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 400,
      child: Image.network(
        'https://picsum.photos/200/200/?random',
        fit: BoxFit.cover,
      ),
    );
  }
}

class ContaintBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            IconsSection(),
            Container(
                margin: EdgeInsets.only(top: 8),
                alignment: Alignment.centerLeft, child: Text('6,194 likes')),
            Container(
                alignment: Alignment.centerLeft,
                child: Text("fireboltt_Fire-Bolt Adsteroid | Just INR 1,499")),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                    "featuring a stunning 36.3mm(1.43) AMOLED display, Bluetooth calling and low power")),
            Container(
                alignment: Alignment.centerLeft,
                child: Text("View all 145 comments",style: TextStyle(color: Colors.grey),)),
          ],
        ),
      ),
    );
  }
}

class IconsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Icon(Icons.heart_broken_rounded)),
          Expanded(child: Icon(Icons.mode_comment_outlined)),
          Expanded(child: Icon(Icons.send_outlined)),
          Expanded(
              flex: 10,
              child: Container(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.bookmark_border_rounded)))
        ],
      ),
    );
  }
}
