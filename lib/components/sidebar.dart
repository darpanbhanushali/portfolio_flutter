import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/Services/onhovertab.dart';
import 'package:portfolio_flutter/Services/responsive.dart';
import 'package:portfolio_flutter/Services/selectedTab.dart';
import 'package:provider/provider.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({
    Key? key,
  }) : super(key: key);

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  // String colorChange = 'none';
  String currentTab = 'home';

  // void _inEnter(PointerEvent details) {
  //   setState(() {
  //     if (details.position.dy >= 245 && details.position.dy <= 295) {
  //       colorChange = 'home';
  //     }
  //     if (details.position.dy >= 302 && details.position.dy <= 351) {
  //       colorChange = 'about';
  //     }
  //     if (details.position.dy >= 359 && details.position.dy <= 407) {
  //       colorChange = 'skills';
  //     }
  //     if (details.position.dy >= 417 && details.position.dy <= 465) {
  //       colorChange = 'certificates';
  //     }
  //     if (details.position.dy >= 473 && details.position.dy <= 522) {
  //       colorChange = 'contact';
  //     }
  //     // print(details.position.dy);
  //   });
  // }

  // void _inExit(PointerEvent details) {
  //   setState(() {
  //     colorChange = 'none';
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    currentTab = Provider.of<SelectedTab>(context).currentTab;
    return SingleChildScrollView(
      child: Container(
        constraints:
            BoxConstraints(minHeight: MediaQuery.of(context).size.height),
        color: Color(0xffFDF9FF),
        width: 290,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  height: MediaQuery.of(context).size.height / 3,
                  child: Image.asset(
                    'images/Logo.png',
                  ),
                ),
                if (Responsive.isSmallScreen(context))
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.4)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6)),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentTab = 'home';
                    });
                    Provider.of<SelectedTab>(context, listen: false)
                        .updateSelectedTab('home');
                    Responsive.isSmallScreen(context)
                        ? Navigator.of(context).pop()
                        : null;
                  },
                  child: OnHoverTab(
                    isCurrentTab: currentTab == 'home',
                    builder: (isHovered) {
                      final color = isHovered
                          ? Colors.blue
                          : Theme.of(context).primaryColor;
                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        horizontalTitleGap: 0,
                        leading: Icon(
                          FontAwesomeIcons.home,
                          size: 18.0,
                          color: currentTab == 'home' ? Colors.blue : color,
                        ),
                        title: Align(
                          child: Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 18,
                                color:
                                    currentTab == 'home' ? Colors.blue : color,
                                fontWeight: FontWeight.w600),
                          ),
                          alignment: Alignment(-1.15, 0.0),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 4.0),
                  child: Container(height: 1, color: Colors.grey[300]),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentTab = 'about';
                    });
                    Provider.of<SelectedTab>(context, listen: false)
                        .updateSelectedTab('about');
                    Responsive.isSmallScreen(context)
                        ? Navigator.of(context).pop()
                        : null;
                  },
                  child: OnHoverTab(
                    isCurrentTab: currentTab == 'about',
                    builder: (isHovered) {
                      final color = isHovered
                          ? Colors.blue
                          : Theme.of(context).primaryColor;
                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        horizontalTitleGap: 0,
                        leading: Icon(
                          FontAwesomeIcons.userAlt,
                          size: 18.0,
                          color: currentTab == 'about' ? Colors.blue : color,
                        ),
                        title: Align(
                          child: Text(
                            "About",
                            style: TextStyle(
                                fontSize: 18,
                                color:
                                    currentTab == 'about' ? Colors.blue : color,
                                fontWeight: FontWeight.w600),
                          ),
                          alignment: Alignment(-1.15, 0.0),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 4.0),
                  child: Container(height: 1, color: Colors.grey[300]),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentTab = 'skills';
                    });
                    Provider.of<SelectedTab>(context, listen: false)
                        .updateSelectedTab('skills');
                    Responsive.isSmallScreen(context)
                        ? Navigator.of(context).pop()
                        : null;
                  },
                  child: OnHoverTab(
                    isCurrentTab: currentTab == 'skills',
                    builder: (isHovered) {
                      final color = isHovered
                          ? Colors.blue
                          : Theme.of(context).primaryColor;
                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        horizontalTitleGap: 0,
                        leading: Icon(
                          FontAwesomeIcons.bars,
                          size: 18.0,
                          color: currentTab == 'skills' ? Colors.blue : color,
                        ),
                        title: Align(
                          child: Text(
                            "Skills",
                            style: TextStyle(
                                fontSize: 18,
                                color: currentTab == 'skills'
                                    ? Colors.blue
                                    : color,
                                fontWeight: FontWeight.w600),
                          ),
                          alignment: Alignment(-1.15, 0.0),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 4.0),
                  child: Container(height: 1, color: Colors.grey[300]),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentTab = 'certificates';
                    });
                    Provider.of<SelectedTab>(context, listen: false)
                        .updateSelectedTab('certificates');
                    Responsive.isSmallScreen(context)
                        ? Navigator.of(context).pop()
                        : null;
                  },
                  child: OnHoverTab(
                      isCurrentTab: currentTab == 'certificates',
                      builder: (isHovered) {
                        final color = isHovered
                            ? Colors.blue
                            : Theme.of(context).primaryColor;
                        return ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 40),
                          horizontalTitleGap: 0,
                          leading: Icon(
                            FontAwesomeIcons.solidEnvelope,
                            size: 18.0,
                            color: currentTab == 'certificates'
                                ? Colors.blue
                                : color,
                          ),
                          title: Align(
                            child: Text(
                              "Certificates",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: currentTab == 'certificates'
                                      ? Colors.blue
                                      : color,
                                  fontWeight: FontWeight.w600),
                            ),
                            alignment: Alignment(-1.15, 0.0),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 4.0),
                  child: Container(height: 1, color: Colors.grey[300]),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentTab = 'contact';
                    });
                    Provider.of<SelectedTab>(context, listen: false)
                        .updateSelectedTab('contact');
                    Responsive.isSmallScreen(context)
                        ? Navigator.of(context).pop()
                        : null;
                  },
                  child: OnHoverTab(
                    isCurrentTab: currentTab == 'contact',
                    builder: (isHovered) {
                      final color = isHovered
                          ? Colors.blue
                          : Theme.of(context).primaryColor;
                      return ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 40),
                        horizontalTitleGap: 0,
                        leading: Icon(
                          FontAwesomeIcons.solidComments,
                          size: 18.0,
                          color: currentTab == 'contact' ? Colors.blue : color,
                        ),
                        title: Align(
                          child: Text(
                            "Contact",
                            style: TextStyle(
                                fontSize: 18,
                                color: currentTab == 'contact'
                                    ? Colors.blue
                                    : color,
                                fontWeight: FontWeight.w600),
                          ),
                          alignment: Alignment(-1.15, 0.0),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 4.0),
                  child: Container(height: 1, color: Colors.grey[300]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
