import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(41, 155, 205, 1.0),
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text("Flud"),
          actions: <Widget>[
            Icon(Icons.search),
            SizedBox(
              width: 25.0,
            ),
            Container(
              child:  Image.asset(
                "magnet.png",
                height: 20.0,
                width: 18.0,
                
                fit: BoxFit.contain,
              ),
             
            ),
            SizedBox(
              width: 15.0,
            ),
            Icon(Icons.more_vert)
          ],
          bottom: TabBar(
            indicatorColor: Colors.yellow.shade500,
            tabs: <Widget>[
              Tab(
                text: "ALL",
              ),
              Tab(
                text: "QUEUED",
              ),
              Tab(
                text: "FINISHED",
              ),
            ],
            controller: _tabController,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  "You have not added any torrents.Select Add torrent to add new torrents.You can also add magnet links.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  "Currently there are no queued torrents. Select Add torrent to add new torrents.You can also add magnet links.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  "No torrents have finished yet.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
          controller: _tabController,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pink.withAlpha(200),
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
