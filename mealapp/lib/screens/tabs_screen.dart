import 'package:flutter/material.dart';
import './categories_screen.dart';
import './Favorite_screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> pages = [
       {'page': CatogoriesScreen(), 'title': 'Categories'},
      {'page': FavoriteScreen(), 'title': 'Favorites'},      
    ];
int selectpageindex = 0;

    void selectTab(int index){
        setState(() {
          selectpageindex = index;
        });
    }
  @override
  Widget build(BuildContext context) {
    
    // return DefaultTabController(length: 2, child: Scaffold(
      return Scaffold(
      appBar: AppBar(title: Text(pages[selectpageindex]['title']),
      // bottom: TabBar(tabs: <Widget>[
      //   Tab(
      //     icon: Icon(Icons.category),
      //     text: 'Category',
      //   ),
      //   Tab(
      //     icon: Icon(Icons.star),
      //     text: 'Favorite',
      //   ),
      // ],),
      
      // ),
      // body: TabBarView(children: <Widget>[
      //   CatogoriesScreen(), FavoriteScreen()
      // ],),
      ),
      drawer: MainDrawer(),
      body: pages[selectpageindex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectTab,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        backgroundColor: Theme.of(context).primaryColor,
         items: [
          BottomNavigationBarItem(icon: Icon(Icons.category),
          title: Text('Category'),),
           BottomNavigationBarItem(icon: Icon(Icons.star),
          title: Text('Favorite'),),
        ],
      ),
    
      
      );
  }
}