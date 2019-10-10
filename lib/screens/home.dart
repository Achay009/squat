import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this ,initialIndex: 1);
  }


  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceAround,
//      children: <Widget>[
//        TabBar(
//
//          controller: _tabController,
//          indicatorColor: Colors.blueAccent,
//          unselectedLabelColor: Colors.black54,
//          labelColor: Colors.blueAccent,
//
//          tabs: <Widget>[
//
//            Tab(child: Text('ALL',  style: TextStyle(
//                fontSize: 9.0
//            ),)),
//            Tab(child: Text('BUY ROOMS',
//            style: TextStyle(
//              fontSize: 9.0
//            ),)),
//            Tab(child: Text('SHARED ROOMS',  style: TextStyle(
//                fontSize: 9.0
//            ),)),
//            Tab(child: Text('SHARED APARTMENT',  style: TextStyle(
//                fontSize: 9.0
//            ),))
//          ],
//        ),
//        Container(
//          height: screenHeight * 0.70,
//          child: TabBarView(
//            controller: _tabController,
//            children: <Widget>[
//                Container(
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(20.0),
//                    color: Colors.deepPurpleAccent,
//                  ),
//
//                ),
//                Container(
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(20.0),
//                      color: Colors.green
//                  ),
//                ),
//                Container(
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(20.0),
//                      color: Colors.purpleAccent
//                  ),
//                ),
//                Container(
//                  decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(20.0),
//                      color: Colors.limeAccent
//                  ),
//                ),
//              ],
//          ),
//        ),
//      ],
//    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Home'),
        bottom: TabBar(

          controller: _tabController,
            indicatorColor: Colors.white,

            tabs: <Widget>[

            Tab(child: Text('ALL',  style: TextStyle(
                fontSize: 9.0
            ),)),
            Tab(child: Text('BUY ROOMS',
            style: TextStyle(
              fontSize: 9.0
            ),)),
            Tab(child: Text('SHARED ROOMS',  style: TextStyle(
                fontSize: 9.0
            ),)),
            Tab(child: Text('SHARED APARTMENT',  style: TextStyle(
                fontSize: 9.0
            ),))

            ],
        ),
      ),
      body: new TabBarView(

        controller: _tabController,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.deepPurpleAccent,
              ),

            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.green
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.purpleAccent
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.limeAccent
              ),
            ),
          ],
      ),
    );
  }
}
