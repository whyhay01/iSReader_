import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:i_s_reader/data/drawer_items.dart';
import 'package:i_s_reader/model/drawer_item.dart';
import 'package:i_s_reader/pages/about_page.dart';
import 'package:i_s_reader/pages/my_dashboard_page.dart';
import 'package:i_s_reader/pages/setting_page.dart';
import 'package:i_s_reader/pages/terms_and_condition_page.dart';
import 'package:i_s_reader/pages/my_books_page.dart';
import 'package:i_s_reader/pages/assessment_page.dart';
import 'package:i_s_reader/provider/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final safeArea =
    EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);

    final provider = Provider.of<NavigationProvider>(context);
    final isCollapsed = provider.isCollapsed;

    String readerName = 'Yakub';

    return Container(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: Color(PerformancePage.backgroundColor),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 24).add(safeArea),
                width: double.infinity,
                color: Colors.white12,
                child: buildHeader(isCollapsed),
              ),
              const SizedBox(height: 14),
              buildList(items: itemsFirst, isCollapsed: isCollapsed),
              const SizedBox(height: 14),
              Divider(color: Colors.white70),
              const SizedBox(height: 14),
              buildList(
                indexOffset: itemsFirst.length,
                items: itemsSecond,
                isCollapsed: isCollapsed,
              ),
              Spacer(),
              buildCollapseIcon(context, isCollapsed),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList({
    required bool isCollapsed,
    required List<DrawerItem> items,
    int indexOffset = 0,
  }) =>
      ListView.separated(
        padding: isCollapsed ? EdgeInsets.zero : padding,
        shrinkWrap: true,
        primary: false,
        itemCount: items.length,
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemBuilder: (context, index) {
          final item = items[index];

          return buildMenuItem(
            isCollapsed: isCollapsed,
            text: item.title,
            icon: item.icon,
            onClicked: () => selectItem(context, indexOffset + index),
          );
        },
      );

  void selectItem(BuildContext context, int index) {
    final navigateTo = (page) => Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => page,
    ));

    Navigator.of(context).pop();

    switch (index) {
      case 0:
        navigateTo(GetStartedPage());
        break;
      case 1:
        navigateTo(SamplesPage());
        break;
      case 2:
        navigateTo(TestingPage());
        break;
      case 3:
        navigateTo(PerformancePage());
        break;
      case 4:
        navigateTo(DeploymentPage());
        break;
      case 5:
        navigateTo(ResourcesPage());
        break;
    }
  }

  Widget buildMenuItem({
    required bool isCollapsed,
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final leading = Icon(icon, color: color);

    return Material(
      color: Colors.transparent,
      child: isCollapsed
          ? ListTile(
        title: leading,
        onTap: onClicked,
      )
          : ListTile(
        leading: leading,
        title: Text(text, style: TextStyle(color: color, fontSize: 16)),
        onTap: onClicked,
      ),
    );
  }

  Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
    final double size = 52;
    final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
    final margin = isCollapsed ? null : EdgeInsets.only(right: 16);
    final width = isCollapsed ? double.infinity : size;

    return Container(
      alignment: alignment,
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Container(
            width: width,
            height: size,
            child: Icon(icon, color: Colors.white),
          ),
          onTap: () {
            final provider =
            Provider.of<NavigationProvider>(context, listen: false);

            provider.toggleIsCollapsed();
          },
        ),
      ),
    );
  }

  Widget buildHeader(bool isCollapsed) => isCollapsed
      ? CircleAvatar(
    radius: 45,
    backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPQzg2-modiBeSBIckt_NcpipPPGQfZA_dbQ&usqp=CAU'),
  )
      : Row(
    children: [
      const SizedBox(width: 24),
      CircleAvatar(
        radius: 45,
        backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPQzg2-modiBeSBIckt_NcpipPPGQfZA_dbQ&usqp=CAU'),
      ),
      const SizedBox(width: 26),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello',
            style: TextStyle(
              fontSize: 20, color: Colors.white,
            ),
          ),
          SizedBox(height: 10,),

          Text( 'Yakub' ,
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ],
      )

    ],
  );
}