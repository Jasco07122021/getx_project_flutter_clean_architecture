import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int number = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExampleW(
          count: number,
          child: Text(
            number.toString(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}

class ExampleW extends InheritedWidget {
  final int count;

  const ExampleW({
    Key? key,
    required Widget child,
    required this.count,
  }) : super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return count != oldWidget.count;
  }
}
