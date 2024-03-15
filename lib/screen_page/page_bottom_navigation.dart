import 'package:coba/screen_page/page_form_register.dart';
import 'package:flutter/material.dart';

import 'custom_grid.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});
  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}
class _BottomNavigationPageState extends
State<BottomNavigationPage>
with SingleTickerProviderStateMixin {
TabController? tabController;
@override
void initState() {
// TODO: implement initState
  super.initState();
  tabController = TabController(length: 3, vsync: this);
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: TabBarView(
        controller: tabController,
        children: const[
          FormRegister(),
          CustomeGrid(),
          ]),
    bottomNavigationBar: BottomAppBar(
      child: TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          controller: tabController,
          tabs: const [
            Tab(text: "Form Register",
              icon: Icon(Icons.input),
            ),
            Tab(
              text: "Custome Grid",
              icon: Icon(Icons.grid_on),
            ),
            Tab(
              text: "Search List",
              icon: Icon(Icons.search),
            )
          ]),
    ),
  );
}
}