import 'package:flutter/material.dart';
import 'package:security_app/home_page.dart';

class Index extends StatefulWidget {
  const Index({super.key, required this.title});
  final String title;

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _currentIndex = 0;
  List<String> _titles = ["Home", "Search", "Comments", "Profile"];
  List<Widget> _pages = [
    Container(
      child: MyHomePage(title: "Home Page"),
    ),
    Container(
      child: Center(
        child: Text("Search"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Comments"),
      ),
    ),
    Container(
      child: Center(
        child: Text("Profile"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: _appBar(),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: _bars(),
      ),
    );
  }

  List<BottomNavigationBarItem> _bars() {
    return const [
      BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: Colors.green,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          label: "Search"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.comment,
            color: Colors.grey,
          ),
          label: "Comment"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.verified_user,
            color: Colors.grey,
          ),
          label: "Profile"),
    ];
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.grey,
      leading: const Icon(
        size: 35,
        Icons.bookmark,
        color: Color.fromARGB(255, 104, 122, 119),
      ),
      elevation: 0,
      title: Center(
        child: Text(
          textAlign: TextAlign.end,
          _titles[_currentIndex],
          style: const TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 35,
              Icons.notifications,
              color: Color.fromARGB(255, 104, 122, 119),
            ))
      ],
    );
  }
}
