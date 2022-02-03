import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class S_App extends StatefulWidget {
  const S_App({Key? key}) : super(key: key);

  @override
  _S_AppState createState() => _S_AppState();
}

class _S_AppState extends State<S_App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            child: Column(
              children: [
                Card(
                    child: Image.asset(
                  'images/shado/b.PNG',
                )),
                const Divider(),
                const Text('......'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/shado/e.PNG',
                )),
                const Divider(),
                const Text('....'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/shado/m.PNG',
                )),
                const Divider(),
                const Text('......'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/shado/t.PNG',
                )),
                const Divider(),
                const Text('.....'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/shado/v.PNG',
                )),
                const Divider(),
                const Text('..........'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/shado/x.PNG',
                )),
                const Divider(),
                const Text('......'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/image/rae.PNG',
                )),
                const Divider(),
                const Text('.......'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/image/rae.PNG',
                )),
                const Divider(),
                const Text('.....'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/image/rae.PNG',
                )),
                const Divider(),
                const Text('.......'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/image/rae.PNG',
                )),
                const Divider(),
                const Text('......'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/image/rae.PNG',
                )),
                const Divider(),
                const Text('.......'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/image/rae.PNG',
                )),
                const Divider(),
                const Text('......'),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
                Card(
                    child: Image.asset(
                  'images/image/rae.PNG',
                )),
                const Divider(),
                const Divider(),
                const SizedBox(
                  height: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
