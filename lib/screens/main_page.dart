import 'package:flutter/material.dart';
import 'package:portfolio_flutter/Services/responsive.dart';
import 'package:portfolio_flutter/screens/about.dart';
import 'package:portfolio_flutter/screens/certificates.dart';
import 'package:portfolio_flutter/screens/contact.dart';
import 'package:portfolio_flutter/screens/home.dart';
import 'package:portfolio_flutter/Services/selectedTab.dart';
import 'package:portfolio_flutter/screens/skills.dart';
import 'package:portfolio_flutter/components/sidebar.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  // late AnimationController _controller;
  // late Animation<Offset> _animation;

  switchCase(tab) {
    switch (tab) {
      case 'home':
        return Home();
      case 'about':
        return About();
      case 'skills':
        return Skills();
      case 'certificates':
        return Certificates();
      case 'contact':
        return Contact();
    }
  }

  @override
  void initState() {
    super.initState();

    // _controller = AnimationController(
    //   duration: const Duration(seconds: 3),
    //   vsync: this,
    // )..forward();
    // _animation = Tween<Offset>(
    //   begin: const Offset(-0.5, 0.0),
    //   end: const Offset(0.5, 0.0),
    // ).animate(CurvedAnimation(
    //   parent: _controller,
    //   curve: Curves.easeInCubic,
    // ));
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    // currentTab = Provider.of<SelectedTab>(context).currentTab;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Responsive.isSmallScreen(context)
            ? Drawer(
                child: Sidebar(),
              )
            : null,
        body: Center(
          child: Consumer<SelectedTab>(
            builder: (BuildContext context, value, child) {
              return Container(
                // constraints: BoxConstraints(minWidth: 1000.0),
                child: Responsive(
                  largeScreen: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context)
                        .copyWith(scrollbars: false),
                    child: Row(
                      children: [
                        Sidebar(),
                        VerticalDivider(
                          width: 0,
                          color: Colors.grey[400],
                        ),
                        switchCase(value.currentTab),

                        // Consumer<SelectedTab>(builder: (context, tabSelected, child) {
                        //   print(tabSelected.currentTab);
                        //   return switchCase(tabSelected.currentTab);
                        // })
                      ],
                    ),
                  ),
                  smallScreen: Column(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.5,
                                  color: Colors.grey.withOpacity(0.4)),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                          child: IconButton(
                              onPressed: () {
                                _scaffoldKey.currentState!.openDrawer();
                              },
                              icon: Icon(
                                Icons.menu,
                                color: Color(0xFF2F5EB0),
                              )),
                        ),
                      ),
                      switchCase(value.currentTab),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        backgroundColor: Color(0xFFF2F2FC),
      ),
    );
  }
}
