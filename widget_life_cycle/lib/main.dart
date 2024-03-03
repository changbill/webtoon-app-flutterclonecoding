import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.red[200],
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            showTitle ? const MyLargeTitle() : const Text('No Title'),
            IconButton(
                onPressed: toggleTitle, icon: const Icon(Icons.remove_red_eye)),
          ]),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {

/// WidgetLifeCycle

  /// initState()는 위젯이 생성될 때 한 번만 호출되는 함수이다.
  /// 일반적인 경우 int x = 0; 이런식으로 초기화를 해주는데
  /// initState()를 사용하는 이유는 부모 위젯으로부터 받은 값을 초기화할 때 사용한다.
  @override
  void initState() {
    super.initState();
    debugPrint('hello');
  }

/// dispose는 위젯이 화면에서 사라질 때 호출되는 함수이다.
  @override
  void dispose() {
    super.dispose();
    debugPrint('dispose');
  }

/// build는 위젯이 화면에 그려질 때 호출되는 함수이다.
  @override
  Widget build(BuildContext context) {
    debugPrint('build');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
