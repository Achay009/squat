import 'package:flutter/material.dart';
import './home.dart';

class SquatHome extends StatefulWidget {
  @override
  _SquatHomeState createState() => _SquatHomeState();
}

class _SquatHomeState extends State<SquatHome> with TickerProviderStateMixin {

  TabController _tabController;



  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this , initialIndex: 1);

  }


  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

//      appBar: new AppBar(
//
//        title: Center(child : Text('SQUAT')),
////        bottom: TabBar(
////
////          indicatorColor: Colors.white,
////            tabs: <Widget> [
////              Tab(child: Text('ALL')),
////              Tab(child: Text('BUY ROOMS')),
////              Tab(child: Text('SHARED ROOMS')),
////              Tab(child: Text('SHARED APARTMENT'))
////            ],
////        ),
//      ),
      body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            HomePage(),
            Center(child: Text('Add Listing')),
            Center(child: Text('My Listing')),
            Center(child: Text('Account')),

          ],
      ),

      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(

          controller: _tabController,
          indicatorColor: Colors.blueAccent,
          labelColor: Colors.blueAccent,
          unselectedLabelColor: Colors.black54,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.add_circle)),
            Tab(icon: Icon(Icons.add_shopping_cart)),
            Tab(icon: Icon(Icons.supervisor_account)),

          ],
        ),
      ),

    );
  }
}
