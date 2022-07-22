import 'package:flutter/material.dart';

import 'cityDropDown.dart';
import 'routes/Routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Weather to App'),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RoutesPath.currentWeatherPage);
                },
                child: Text('Checkout Weather'))
          ],
        ),
      ),
    );
  }
}
