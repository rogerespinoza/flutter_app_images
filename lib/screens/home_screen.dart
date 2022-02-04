import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';
// import 'package:fl_components/screens/listview2_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptionsArray = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(
                    menuOptionsArray[i].icon,
                    // color: Theme.of(context).primary,
                    color: AppTheme.primary,
                  ),
                  title: Text(menuOptionsArray[i].name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    //     builder: (context) => const Listview2Screen(),
                    // );
                    Navigator.pushNamed(context, menuOptionsArray[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptionsArray.length));
  }
}
