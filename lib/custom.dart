// ignore_for_file: prefer_const_constructors, camel_case_types, deprecated_member_use, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sliver_header_delegate/sliver_header_delegate.dart';

import 'model.dart';

class customview extends SingleChildLayoutDelegate {
  customview(this.size) : super(relayout: size);
  final ValueNotifier<Size> size;

  @override
  bool shouldRelayout(customview oldDelegate) {
    return size != oldDelegate.size;
  }
}

class alingcls extends StatelessWidget {
  const alingcls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 500,
        width: 500,
        color: Colors.amberAccent,
        child: Align(
          alignment: Alignment.center,
          child: Text("data"),
        ),
      ),
    );
  }
}

class aspect extends StatelessWidget {
  const aspect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          color: Colors.blue,
          child: AspectRatio(
            aspectRatio: 1 / 3,
          )),
    );
  }
}

class baselinecls extends StatelessWidget {
  const baselinecls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blueGrey,
          child: Baseline(
            baseline: 40,
            baselineType: TextBaseline.ideographic,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ),
    );
  }
}

class constainbox extends StatelessWidget {
  const constainbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(height: 200, width: 200),
        child: Container(
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}

class custom extends StatelessWidget {
  const custom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 150,
                height: 250,
                color: Colors.teal,
              ),
              Container(
                width: 150,
                height: 100,
                color: Colors.red,
              )
            ],
          ),
        ));
  }
}

class fraction extends StatelessWidget {
  const fraction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 1 / 3,
          heightFactor: 1 / 2,
          alignment: FractionalOffset.center,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class offset1 extends StatefulWidget {
  const offset1({Key? key}) : super(key: key);

  @override
  State<offset1> createState() => _offsetState();
}

class _offsetState extends State<offset1> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Offstage(
              child: FlutterLogo(size: 200),
              offstage: visible,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          visible = false;
                        });
                      },
                      child: Text("Visible"),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Column(
                  children: [
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          visible = true;
                        });
                      },
                      child: Text("Hide"),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class overfloww extends StatelessWidget {
  const overfloww({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.grey,
          child: SizedOverflowBox(
            size: const Size(100, 100),
            child: Container(height: 50.0, width: 150.0, color: Colors.teal),
          ),
        ),
      ),
    );
  }
}

class trans extends StatelessWidget {
  const trans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Transform(
          transform: Matrix4.skew(0.1, 0.2),
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}

class gridviewex extends StatelessWidget {
  gridviewex({Key? key}) : super(key: key);
  List<String> name = ["zaid1", "zaid2", "zaid3", "zaid4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        itemCount: name.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
              color: Colors.blueGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(flex: 3, child: FittedBox(child: FlutterLogo())),
                  Expanded(
                      child: Center(
                          child: Text(
                    name[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))),
                ],
              ));
        },
      ),
    );
  }
}

class indexstackk extends StatefulWidget {
  const indexstackk({Key? key}) : super(key: key);

  @override
  State<indexstackk> createState() => _indexstackkState();
}

class _indexstackkState extends State<indexstackk> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: IndexedStack(
                alignment: AlignmentDirectional.center,
                index: index,
                children: <Widget>[
                  FittedBox(
                    child: FlutterLogo(
                      style: FlutterLogoStyle.horizontal,
                      size: 200,
                    ),
                  ),
                  FittedBox(
                    child: FlutterLogo(
                      style: FlutterLogoStyle.markOnly,
                      size: 200,
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: FlutterLogo(
                      style: FlutterLogoStyle.stacked,
                      size: 200,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  color: Colors.pink[300],
                  child: Text(
                    'Flutter',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      index = 0;
                    });
                  },
                ),
                FlatButton(
                  color: Colors.pink[300],
                  child: Text(
                    'Aeologic',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      index = 1;
                    });
                  },
                ),
                FlatButton(
                  color: Colors.pink[300],
                  child: Text(
                    'Flutter Devs',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      index = 2;
                    });
                  },
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class listbodyy extends StatelessWidget {
  const listbodyy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListBody(
          children: [
            Container(color: Colors.blueGrey, child: Text("first")),
            Container(
              color: Colors.blueGrey,
              child: Text("second"),
            ),
            Container(
              color: Colors.blueGrey,
              child: Text("third"),
            ),
            Container(
              color: Colors.blueGrey,
              child: Text("fourth"),
            )
          ],
        ),
      ),
    );
  }
}

Widget listvieww() {
  return Scaffold(
    appBar: AppBar(),
    body: ListView.builder(
      itemCount: 20,
      itemBuilder: (context, position) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              (position + 1).toString(),
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        );
      },
    ),
  );
}

Widget staky() {
  return Scaffold(
    appBar: AppBar(),
    body: Container(
      color: Colors.blueGrey,
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.blueGrey.shade100,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blueGrey.shade200,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blueGrey.shade300,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget tablee() {
  return Scaffold(
    appBar: AppBar(),
    body: Center(
      child: Table(
        children: [
          TableRow(children: [
            Center(child: Text("Zaid")),
            Center(child: Text("Zaid")),
            Center(child: Text("Zaid")),
          ]),
          TableRow(children: [
            Center(child: Text("Zaid")),
            Center(child: Text("Zaid")),
            Center(child: Text("Zaid")),
          ]),
          TableRow(children: [
            Center(child: Text("Zaid")),
            Center(child: Text("Zaid")),
            Center(child: Text("Zaid")),
          ]),
        ],
      ),
    ),
  );
}

Widget wraping() {
  return Scaffold(
    appBar: AppBar(),
    body: Wrap(
      children: [
        FlutterLogo(
          size: 100,
        ),
        FlutterLogo(
          size: 100,
        ),
        FlutterLogo(
          size: 100,
        ),
        FlutterLogo(
          size: 100,
        ),
      ],
    ),
  );
}

Widget place() {
  return Scaffold(
    appBar: AppBar(),
    body: Placeholder(),
  );
}

class navbit extends StatefulWidget {
  const navbit({Key? key}) : super(key: key);

  @override
  State<navbit> createState() => _navbitState();
}

class _navbitState extends State<navbit> {
  int index = 0;
  List<Widget> wids = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(Icons.search, size: 200), Text("Search")],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(Icons.home, size: 200), Text("Home")],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.settings,
          size: 200,
        ),
        Text("Settings")
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: wids[index],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (int item) {
          setState(() {
            index = item;
          });
        },
      ),
    );
  }
}

class tabbar extends StatefulWidget {
  const tabbar({Key? key}) : super(key: key);

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            // ignore: prefer_const_literals_to_create_immutables
            bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.search), text: "Search"),
          Tab(icon: Icon(Icons.home), text: "Home"),
          Tab(icon: Icon(Icons.settings), text: "Settings"),
        ])),
        // ignore: prefer_const_literals_to_create_immutables
        body: TabBarView(children: [
          Center(
              child: Text(
            "search",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            "home",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          Center(
              child: Text(
            "setting",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ]),
      ),
    );
  }
}

Widget popo() {
  return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        actions: [
          PopupMenuButton(
              onSelected: (selectedValue) {},
              itemBuilder: (BuildContext ctx) => [
                    PopupMenuItem(child: Text('Option 1'), value: '1'),
                    PopupMenuItem(child: Text('Option 2'), value: '2'),
                    PopupMenuItem(child: Text('Option 3'), value: '3'),
                    PopupMenuItem(child: Text('Option 4'), value: '4'),
                  ]),
        ],
      ),
      body: Center());
}

class datee extends StatelessWidget {
  const datee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          child: Text(
            'show date time picker',
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: () {
            DatePicker.showDatePicker(context,
                showTitleActions: true,
                minTime: DateTime(2000, 1, 1),
                maxTime: DateTime(2022, 12, 31),
                currentTime: DateTime.now(),
                locale: LocaleType.en);
          },
        ),
      ),
    );
  }
}

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late VoidCallback _showPersistantBottomSheetCallBack;

  @override
  void initState() {
    super.initState();
    _showPersistantBottomSheetCallBack = _showBottomSheet;
  }

  void _showBottomSheet() {
    setState(() {});

    _scaffoldKey.currentState
        ?.showBottomSheet((context) {
          return Container(
            height: 200.0,
            color: Colors.teal[100],
            child: Center(
              child: Text(
                "Drag Downwards Or Back To Dismiss Sheet",
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showPersistantBottomSheetCallBack = _showBottomSheet;
            });
          } else {
            setState(() {
              _showPersistantBottomSheetCallBack;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: RaisedButton(
            color: Colors.teal[100],
            onPressed: _showPersistantBottomSheetCallBack,
            child: Text(
              "Show Persistent BottomSheet",
              style: TextStyle(color: Colors.black),
            ),
          )),
        ));
  }
}

class dialogg extends StatelessWidget {
  const dialogg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton(
              onPressed: () => {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: Text('Choose food'),
                          children: [
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Pizza'),
                            ),
                            SimpleDialogOption(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Burger'),
                            ),
                          ],
                          elevation: 10,
                          backgroundColor: Colors.blueGrey[300],
                        );
                      },
                    )
                  },
              child: Text("food")),
        ));
  }
}

class alertd extends StatefulWidget {
  const alertd({Key? key}) : super(key: key);

  @override
  State<alertd> createState() => _alertdState();
}

class _alertdState extends State<alertd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Example"),
                      content: Text("Press Okay"),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("ok"))
                      ],
                    );
                  });
            },
            child: Text("Press")),
      ),
    );
  }
}

class toastf extends StatefulWidget {
  const toastf({Key? key}) : super(key: key);

  @override
  State<toastf> createState() => _toastfState();
}

class _toastfState extends State<toastf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(msg: "Flutter Toasts");
            },
            child: Text("Press")),
      ),
    );
  }
}

class snacky extends StatefulWidget {
  const snacky({Key? key}) : super(key: key);

  @override
  State<snacky> createState() => _snackyState();
}

class _snackyState extends State<snacky> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("this is Snack bar example"),
                action: SnackBarAction(label: "Undo", onPressed: () {}),
              ));
            },
            child: Text("snack bar example")),
      ),
    );
  }
}

class exlist extends StatefulWidget {
  const exlist({Key? key}) : super(key: key);

  @override
  State<exlist> createState() => _exlistState();
}

class _exlistState extends State<exlist> {
  List<Model> m = [
    Model(header: "header", data: "asadjasdjanasjcnjac", extend: false),
    Model(header: "header1", data: "asadjasdjanasjcnjac", extend: false),
    Model(header: "header2", data: "asadjasdjanasjcnjac", extend: false),
    Model(header: "header3", data: "asadjasdjanasjcnjac", extend: false),
    Model(header: "header4", data: "asadjasdjanasjcnjac", extend: false),
    Model(header: "header5", data: "asadjasdjanasjcnjac", extend: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: m.length,
          itemBuilder: (context, index) => ExpansionPanelList(
                animationDuration: Duration(milliseconds: 500),
                dividerColor: Colors.green,
                elevation: 2,
                children: [
                  ExpansionPanel(
                    headerBuilder: ((context, isExpanded) {
                      return Container(
                        child: Text(m[index].header),
                      );
                    }),
                    body: Text(m[index].data),
                    isExpanded: m[index].extend,
                  )
                ],
                expansionCallback: (item, status) {
                  setState(() {
                    m[index].extend = !m[index].extend;
                  });
                },
              )),
    );
  }
/*
    ItemModel(
        headerItem: 'Android',
        discription:
            "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets. ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.",
        colorsItem: Colors.green,
        img: 'assets/images/android_img.png'
 
  ];*/
}

class datatb extends StatefulWidget {
  const datatb({Key? key}) : super(key: key);

  @override
  State<datatb> createState() => _datatbState();
}

class _datatbState extends State<datatb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DataTable(columns: [
        DataColumn(label: Text("name")),
        DataColumn(label: Text("city")),
        DataColumn(label: Text("age")),
      ], rows: [
        DataRow(cells: [
          DataCell(Text("ashraf")),
          DataCell(Text("surat")),
          DataCell(Text("22")),
        ])
      ]),
    );
  }
}

class chipp extends StatefulWidget {
  const chipp({Key? key}) : super(key: key);

  @override
  State<chipp> createState() => _chippState();
}

class _chippState extends State<chipp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.blueAccent[100],
              child: Text("Z"),
            ),
            label: Text("zaid"),
            backgroundColor: Colors.blue,
            elevation: 6,
            padding: EdgeInsets.all(8),
          ),
        ],
      ),
    );
  }
}

class indicator extends StatefulWidget {
  const indicator({Key? key}) : super(key: key);

  @override
  State<indicator> createState() => _indicatorState();
}

class _indicatorState extends State<indicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Tooltip(
              message: "Circuler Indicator",
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
                valueColor: AlwaysStoppedAnimation(Colors.amber),
                strokeWidth: 2,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: LinearProgressIndicator(
              backgroundColor: Colors.red,
              valueColor: AlwaysStoppedAnimation(Colors.amber),
              minHeight: 2,
            ),
          ),
        ],
      ),
    );
  }
}

class Steperr extends StatefulWidget {
  const Steperr({Key? key}) : super(key: key);

  @override
  State<Steperr> createState() => _SteperrState();
}

class _SteperrState extends State<Steperr> {
  int _current = 0;
  StepperType _stepperType = StepperType.vertical;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stepper(
              type: _stepperType,
              physics: ScrollPhysics(),
              currentStep: _current,
              onStepCancel: () => setState(() {
                    _current > 0 ? _current -= 1 : null;
                  }),
              onStepContinue: () => setState(() {
                    _current < 2 ? _current += 1 : null;
                  }),
              steps: [
                Step(title: Text("Acoount"), content: Text("example")),
                Step(title: Text("Acoount"), content: Text("example"))
              ])
        ],
      ),
    );
  }
}

class formi extends StatefulWidget {
  const formi({Key? key}) : super(key: key);

  @override
  State<formi> createState() => _formiState();
}

class _formiState extends State<formi> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String mail = '';
  String pass = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Form(
                key: _globalKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(hintText: "abc@xyz.com"),
                      onSaved: (String? value) async {
                        mail = value!;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "password"),
                      onSaved: (String? value) async {
                        pass = value!;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          print(mail);
                          print(pass);
                          submit();
                        },
                        child: Text("Sign in"))
                  ],
                )),
          )),
    );
  }

  void submit() {
    _globalKey.currentState?.save();
    print(mail);
    print(pass);
  }
}

class nested extends StatefulWidget {
  const nested({Key? key}) : super(key: key);

  @override
  State<nested> createState() => _nestedState();
}

class _nestedState extends State<nested> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 200,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text("example of sliver app baar"),
                ),
                leading: Icon(Icons.arrow_back_ios),
                actions: [Icon(Icons.notification_add)],
              )
            ];
          },
          body: CustomScrollView(
            slivers: [
              SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Container(
                      height: 100,
                      width: 200,
                      color: index % 2 == 0 ? Colors.black : Colors.white,
                    );
                  }),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 10 / 1,
                  ))
            ],
          )),
    );
  }
}

class draggablescroll extends StatefulWidget {
  const draggablescroll({Key? key}) : super(key: key);

  @override
  State<draggablescroll> createState() => _draggablescrollState();
}

class _draggablescrollState extends State<draggablescroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset(
                    "asset/asda.jpg",
                  ).image,
                  fit: BoxFit.cover),
            ),
          ),
          DraggableScrollableSheet(builder: (context, scrollController) {
            return Container(
                decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                  itemCount: 30,
                  controller: scrollController,
                  itemBuilder: ((context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        foregroundImage: Image.asset("asset/spider.jpg").image,
                      ),
                      title: Text("zaid $index"),
                    );
                  }),
                ));
          })
        ],
      ),
    );
  }
}

class pagev extends StatefulWidget {
  const pagev({Key? key}) : super(key: key);

  @override
  State<pagev> createState() => _pagevState();
}

class _pagevState extends State<pagev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class scrollb extends StatefulWidget {
  const scrollb({Key? key}) : super(key: key);

  @override
  State<scrollb> createState() => _scrollbState();
}

class _scrollbState extends State<scrollb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        isAlwaysShown: true,
        thickness: 10,
        showTrackOnHover: false,
        hoverThickness: 20,
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: CircleAvatar(
                foregroundImage: Image.asset("asset/spider.jpg").image,
              ),
              title: Text("zaid $index"),
            );
          }),
        ),
      ),
    );
  }
}

class refresh extends StatefulWidget {
  const refresh({Key? key}) : super(key: key);

  @override
  State<refresh> createState() => _refreshState();
}

class _refreshState extends State<refresh> {
  Future<Null> refresh() async {
    await Future.delayed(Duration(milliseconds: 5000));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: refresh,
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 30,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: CircleAvatar(
                foregroundImage: Image.asset("asset/spider.jpg").image,
              ),
              title: Text("zaid $index"),
            );
          }),
        ),
      ),
    );
  }
}

class backdropp extends StatefulWidget {
  const backdropp({Key? key}) : super(key: key);

  @override
  State<backdropp> createState() => _backdroppState();
}

class _backdroppState extends State<backdropp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => stkback()));
              },
              child: Text("Backdrop"))
        ],
      ),
    );
  }
}

class stkback extends StatefulWidget {
  const stkback({Key? key}) : super(key: key);

  @override
  State<stkback> createState() => _stkbackState();
}

class _stkbackState extends State<stkback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "asset/asda.jpg",
            fit: BoxFit.contain,
          ),
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Center(
                child: Container(
                    padding: EdgeInsets.all(24),
                    color: Colors.white.withOpacity(0.5),
                    child: Text("Flutter Dev's",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ))),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Roatedboxy extends StatefulWidget {
  const Roatedboxy({Key? key}) : super(key: key);

  @override
  State<Roatedboxy> createState() => _RoatedboxyState();
}

class _RoatedboxyState extends State<Roatedboxy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: RotatedBox(
              quarterTurns: 3,
              child: ClipPath(
                  child: FlutterLogo(
                size: 200,
              )))),
    );
  }
}

class custompain extends StatefulWidget {
  const custompain({Key? key}) : super(key: key);

  @override
  State<custompain> createState() => _custompainState();
}

class _custompainState extends State<custompain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: CustomPaint(
          child: Text("zaid"),
        )));
  }
}

class themess extends StatefulWidget {
  const themess({Key? key}) : super(key: key);

  @override
  State<themess> createState() => _themessState();
}

class _themessState extends State<themess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: Text("data"))
        ],
      ),
    );
  }
}

class alignanim extends StatefulWidget {
  const alignanim({Key? key}) : super(key: key);

  @override
  State<alignanim> createState() => _alignanimState();
}

class _alignanimState extends State<alignanim> {
  static const _alignments = [
    Alignment.topLeft,
    Alignment.centerLeft,
    Alignment.bottomLeft,
    Alignment.centerRight,
    Alignment.topRight,
    Alignment.bottomRight,
  ];

  var _index = 0;

  //AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AnimatedAlign(
            alignment: _alignments[_index % 6],
            duration: Duration(milliseconds: 500),
            child: FlutterLogo(
              size: 100,
            ),
          ),
          RaisedButton(
              color: Colors.purple.withOpacity(0.6),
              onPressed: () {
                setState(() {
                  _index++;
                });
              },
              child: Text(
                'Click Me',
              ))
        ],
      ),
    );
  }
}

class animcon extends StatefulWidget {
  const animcon({Key? key}) : super(key: key);

  @override
  State<animcon> createState() => _animconState();
}

class _animconState extends State<animcon> {
  double Hight = 100.0;
  double widht = 100.0;
  double radius = 10;
  Color _color = Colors.white24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: Hight,
          width: widht,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Text("+"),
        onPressed: () {
          setState(() {
            final random = Random();
            Hight = random.nextInt(500).toDouble();
            widht = random.nextInt(500).toDouble();
            radius = random.nextInt(20).toDouble();
            _color = Color.fromRGBO(random.nextInt(300), random.nextInt(300),
                random.nextInt(300), 1);
          });
        },
      ),
    );
  }
}

class animcross extends StatefulWidget {
  const animcross({Key? key}) : super(key: key);

  @override
  State<animcross> createState() => _animcrossState();
}

class _animcrossState extends State<animcross> {
  bool a = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedCrossFade(
            firstChild: InkWell(
              onTap: () => setState(() {
                a = !a;
              }),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
              ),
            ),
            secondChild: InkWell(
              onTap: () => setState(() {
                a = !a;
              }),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            crossFadeState:
                a ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(milliseconds: 500)),
      ),
    );
  }
}

class animmopa extends StatefulWidget {
  const animmopa({Key? key}) : super(key: key);

  @override
  State<animmopa> createState() => _animmopaState();
}

class _animmopaState extends State<animmopa> {
  bool op = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: op ? 1 : 0,
              duration: Duration(milliseconds: 500),
              child: FlutterLogo(
                size: 100,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    op = !op;
                  });
                },
                child: Text("press")),
          ],
        ),
      ),
    );
  }
}

class animbuilder extends StatefulWidget {
  const animbuilder({Key? key}) : super(key: key);

  @override
  State<animbuilder> createState() => _animbuilderState();
}

class _animbuilderState extends State<animbuilder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller.value * pi * 2,
                child: child,
              );
            },
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ],
      ),
    );
  }
}

class defaultextanim extends StatefulWidget {
  const defaultextanim({Key? key}) : super(key: key);

  @override
  State<defaultextanim> createState() => _defaultextanimState();
}

class _defaultextanimState extends State<defaultextanim> {
  bool c = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: AnimatedDefaultTextStyle(
                child: Text("zaid"),
                style: TextStyle(
                  color: c ? Colors.blueGrey : Colors.black,
                  fontSize: c ? 30 : 50,
                ),
                duration: Duration(milliseconds: 500)),
          ),
          ElevatedButton(
              onPressed: () => setState(() {
                    c = !c;
                  }),
              child: Text("press"))
        ],
      ),
    );
  }
}

class animlist extends StatefulWidget {
  const animlist({Key? key}) : super(key: key);

  @override
  State<animlist> createState() => _animlistState();
}

class _animlistState extends State<animlist> {
  final GlobalKey<AnimatedListState> _globalKey =
      GlobalKey<AnimatedListState>();
  List<int> item = [];
  int counter = 0;
  void _addItem() {
    item.insert(item.length, item.length);
    _globalKey.currentState!
        .insertItem(item.length-1, duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedList(
        key: _globalKey,
        initialItemCount: item.length,
        itemBuilder: ((context, index, animation) => SlideTransition(
              position: Tween<Offset>(begin: Offset(0, -1), end: Offset(0, 0))
                  .animate(animation),
              child: Container(
                  height: 100,
                  color: Colors.blueAccent,
                  child: Center(
                      child: Text(
                    "Item $index",
                  ))),
            )),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _addItem, child: const Icon(Icons.add)),
    );
  }
}

class animsize extends StatefulWidget {
  const animsize({Key? key}) : super(key: key);

  @override
  State<animsize> createState() => _animsizeState();
}

class _animsizeState extends State<animsize> {
  bool a = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSize(
              duration: Duration(
                milliseconds: 500,
              ),
              child: FlutterLogo(size: a ? 100 : 200),
            ),
            ElevatedButton(
                onPressed: () => setState(() {
                      a = !a;
                    }),
                child: Text("animatedsize"))
          ],
        ),
      ),
    );
  }
}

class animwidget extends StatefulWidget {
  const animwidget({Key? key}) : super(key: key);

  @override
  State<animwidget> createState() => _animwidgetState();
}

class _animwidgetState extends State<animwidget> with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..repeat();
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: SpinningContainer(controller: _controller)),
    );
  }
}

class SpinningContainer extends AnimatedWidget {
  const SpinningContainer({Key? key, required AnimationController controller})
      : super(key: key, listenable: controller);
  Animation<double> get _progress => listenable as Animation<double>;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: _progress.value * 2.0 * pi,
        child: FlutterLogo(
          size: 100,
        ));
  }
}


class fadetran extends StatefulWidget {
  const fadetran({Key? key}) : super(key: key);

  @override
  State<fadetran> createState() => _fadetranState();
}

class _fadetranState extends State<fadetran> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}


class positionanim extends StatefulWidget {
  const positionanim({Key? key}) : super(key: key);

  @override
  State<positionanim> createState() => _positionanimState();
}

class _positionanimState extends State<positionanim>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    super.initState();
  }

  bool _first = true;

  RelativeRectTween _rectTween = RelativeRectTween(
    begin: RelativeRect.fromLTRB(40, 40, 0, 0),
    end: RelativeRect.fromLTRB(0, 0, 40, 40),
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            child: Stack(children: [
              PositionedTransition(
                  rect: _rectTween.animate(_controller),
                  child: Container(
                      height: 100,
                      width: 100,
                      child: Text(
                        "data",
                        style: TextStyle(color: Colors.black),
                      ))),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          FlatButton(
            onPressed: () {
              if (_first) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
              _first = !_first;
            },
            child: Text(
              "CLICK ME!",
            ),
          )
        ],
      ),
    );
  }
}

class scaltra extends StatefulWidget {
  const scaltra({Key? key}) : super(key: key);

  @override
  State<scaltra> createState() => _scaltraState();
}

class _scaltraState extends State<scaltra> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 500), value: 1)
      ..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceIn);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          alignment: Alignment.center,
          child: FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}

class decoranim extends StatefulWidget {
  const decoranim({Key? key}) : super(key: key);

  @override
  State<decoranim> createState() => _decoranimState();
}

class _decoranimState extends State<decoranim> with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500))
          ..repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final decorationTween = DecorationTween(
    begin: BoxDecoration(
      gradient: RadialGradient(
        center: Alignment.center,
        colors: <Color>[
          Color(0xFFEEEEEE),
          Color(0xFF111133),
        ],
        // stops: <double>[0.9, 1.0],
      ),
    ),
    end: BoxDecoration(
      gradient: RadialGradient(
        center: Alignment.center,
        colors: <Color>[
          Colors.blueGrey,
          Colors.greenAccent,
        ],
        //stops: <double>[0.9, 1.0],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DecoratedBoxTransition(
          position: DecorationPosition.foreground,
          decoration: decorationTween.animate(_controller),
          child: Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}

class hero extends StatefulWidget {
  const hero({Key? key}) : super(key: key);

  @override
  State<hero> createState() => _heroState();
}

class _heroState extends State<hero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        leading: Hero(
          tag: 'hero-rectangle',
          child: Container(
            height: 40,
            width: 40,
            color: Colors.red,
          ),
        ),
        onTap: () => Navigator.of(context).push(MaterialPageRoute<void>(
            builder: (BuildContext context) => hero2())),
        title: const Text('Tap on the icon to view hero animation transition.'),
      ),
    );
  }
}

class hero2 extends StatefulWidget {
  const hero2({Key? key}) : super(key: key);

  @override
  State<hero2> createState() => _hero2State();
}

class _hero2State extends State<hero2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: 'hero-rectangle',
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
        ],
      )),
    );
  }
}

class sizetransanim extends StatefulWidget {
  const sizetransanim({Key? key}) : super(key: key);

  @override
  State<sizetransanim> createState() => _sizetransanimState();
}

class _sizetransanimState extends State<sizetransanim>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    )..repeat(
        reverse: true,
      ); // automatically animation will be started
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizeTransition(
          child: Image.asset(
            'asset/asda.jpg',
          ),
          sizeFactor: CurvedAnimation(
            curve: Curves.fastOutSlowIn,
            parent: controller,
          ),
        ),
      ),
    );
  }
}

class rotatetrananim extends StatefulWidget {
  const rotatetrananim({Key? key}) : super(key: key);

  @override
  State<rotatetrananim> createState() => _rotatetrananimState();
}

class _rotatetrananimState extends State<rotatetrananim>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> _animation;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat();
    _animation = CurvedAnimation(parent: controller, curve: Curves.linear);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Text(
            "Zaid",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class pagetran extends StatefulWidget {
  const pagetran({Key? key}) : super(key: key);

  @override
  State<pagetran> createState() => _pagetranState();
}

class _pagetranState extends State<pagetran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first pagw"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
              context,
              PageTransition(
                  child: pagetran2(), type: PageTransitionType.bottomToTop)),
          child: Text("press"),
        ),
      ),
    );
  }
}

class pagetran2 extends StatefulWidget {
  const pagetran2({Key? key}) : super(key: key);

  @override
  State<pagetran2> createState() => _pagetran2State();
}

class _pagetran2State extends State<pagetran2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
    );
  }
}

class dismissi extends StatefulWidget {
  const dismissi({Key? key}) : super(key: key);

  @override
  State<dismissi> createState() => _dismissiState();
}

class _dismissiState extends State<dismissi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Dismissible(
          key: Key("dis"),
          
          background: slideRightBackground(),
          secondaryBackground: slideLeftBackground(),
        
          confirmDismiss: (a) async{
            return false;
          },
          child: ListTile(
            title: Text(
              "Item $index",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  Widget slideLeftBackground() {
    return Container(
      color: Colors.red,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              " Delete",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }

  Widget slideRightBackground() {
    return Container(
      color: Colors.green,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.edit,
              color: Colors.white,
            ),
            Text(
              " Edit",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}

class absorbpointe extends StatefulWidget {
  const absorbpointe({Key? key}) : super(key: key);

  @override
  State<absorbpointe> createState() => _absorbpointeState();
}

class _absorbpointeState extends State<absorbpointe> {
  bool a = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AbsorbPointer(
          absorbing: a,
            child: ElevatedButton(
                onPressed: () => ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("button pressed"))),
                child: Text("press")),
          ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Switch(value: a, onChanged: (value)=>
                  setState(() {
                    a=value;
                  })),
                ],
              )
        ],

      ),
    );
  }
}

class gasture extends StatefulWidget {
  const gasture({Key? key}) : super(key: key);

  @override
  State<gasture> createState() => _gastureState();
}

class _gastureState extends State<gasture> {
  Color cl = Colors.red;
  Text tx = Text("red");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            cl = Colors.green;
            tx = Text("green");
          }),
          onDoubleTap: () => setState(() {
            cl = Colors.blue;
            tx = Text("blue");
          }),
          onLongPress:  () => setState(() {
            cl = Colors.red;
            tx = Text("red");
          }),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: cl, borderRadius: BorderRadius.circular(15)),
            child: Center(child: tx),
          ),
        ),
      ),
    );
  }
}

class ignorepoint extends StatefulWidget {
  const ignorepoint({Key? key}) : super(key: key);

  @override
  State<ignorepoint> createState() => _ignorepointState();
}

class _ignorepointState extends State<ignorepoint> {
  bool _ignore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IgnorePointer(
            ignoring: _ignore,
              child: Center(
            child: ElevatedButton(
              onPressed: () => ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Button was clicked"))),
              child: Text("press"),
            ),
          )),
          Switch(value: _ignore, onChanged:(a)=>setState(() {
            _ignore=a;
          }))
        ],
      ),
    );
  }
}

class dragevent extends StatefulWidget {
  const dragevent({Key? key}) : super(key: key);

  @override
  State<dragevent> createState() => _drageventState();
}

class _drageventState extends State<dragevent> {
  bool _issuc = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Draggable(
              child: FlutterLogo(size: 100),
              feedback: FlutterLogo(
                size: 100,
              ),
              childWhenDragging: Container(),
              data: ["zaid"],
            ),
          ),
          Container(
            child: DragTarget(
              builder: (context, can, rijc) {
                return _issuc
                    ? Container(
                        height: 200,
                        width: 200,
                        color: Colors.blueGrey,
                        child: FlutterLogo(
                          size: 100,
                        ),
                      )
                    : Container(
                        height: 200,
                        width: 200,
                        color: Colors.blueGrey,
                      );
              },
              onWillAccept: (data) {
                          return true;
              },
              onAcceptWithDetails: (data) {
               
              },
              onAccept: (data) {
                setState(() {
                  _issuc = true;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

class interactiveimg extends StatefulWidget {
  const interactiveimg({Key? key}) : super(key: key);

  @override
  State<interactiveimg> createState() => _interactiveimgState();
}

class _interactiveimgState extends State<interactiveimg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: InteractiveViewer(maxScale: 10,
          child: Image(image: Image.asset("asset/asda.jpg").image)),
    );
  }
}

class Slivernav extends StatefulWidget {
  const Slivernav({Key? key}) : super(key: key);

  @override
  State<Slivernav> createState() => _SlivernavState();
}

class _SlivernavState extends State<Slivernav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            backgroundColor: Colors.amber,
            leading: CupertinoNavigationBarBackButton(
              onPressed: () {},
              color: CupertinoColors.activeBlue,
            ),
            middle: Text("Cupertino example"),
            trailing: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Text("Done"),
                onPressed: () {}),
            largeTitle: Text("zaid"),
          ),
          SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                            color: CupertinoColors.systemGrey3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                "https://media.istockphoto.com/photos/beautiful-meadow-field-with-fresh-grass-and-yellow-dandelion-flowers-picture-id1301592082",
                                fit: BoxFit.fill,
                              ),
                            )),
                      ),
                  childCount: 10))
        ],
      ),
    );
  }
}

class sliverlistdel extends StatefulWidget {
  const sliverlistdel({Key? key}) : super(key: key);

  @override
  State<sliverlistdel> createState() => _sliverlistdelState();
}

class _sliverlistdelState extends State<sliverlistdel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverPersistentHeader(
          pinned: true,
          delegate: FlexibleHeaderDelegate(
            leading: CupertinoNavigationBarBackButton(
              color: CupertinoColors.activeGreen,
              onPressed: () {},
            ),
            statusBarHeight: MediaQuery.of(context).padding.top,
            expandedHeight: 250,
            background: MutableBackground(
              expandedWidget: Image.asset(
                "asset/spider.jpg",
                fit: BoxFit.cover,
              ),
              collapsedColor: Colors.amberAccent,
            ),
          )),
      SliverGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        delegate: SliverChildBuilderDelegate((context, index) => Container(
              height: 200,
              color: Colors.blueGrey,
            )),
      ),
    ]));
  }
}

class sliverbox extends StatefulWidget {
  const sliverbox({Key? key}) : super(key: key);

  @override
  State<sliverbox> createState() => _sliverboxState();
}

class _sliverboxState extends State<sliverbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [SliverToBoxAdapter(child: ror())]),
    );
  }
}

Widget ror() => Center(
      child: Container(
        height: 500,
        width: 300,
        child: Image.asset(
          "asset/spider.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
    
class Cupertinoactionsheet extends StatefulWidget {
  const Cupertinoactionsheet({Key? key}) : super(key: key);

  @override
  State<Cupertinoactionsheet> createState() => _CupertinoactionsheetState();
}

class _CupertinoactionsheetState extends State<Cupertinoactionsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Text("Click"),
          onPressed: () => showCupertinoModalPopup(
              context: context,
              builder: (context) => CupertinoActionSheet(
                    title: Text("Cupertino"),
                    message: Text("Select any One"),
                    actions: [
                      CupertinoActionSheetAction(
                          onPressed: () {
                            Fluttertoast.showToast(msg: "Action1");
                            Navigator.pop(context);
                          },
                          child: Text("Action 1")),
                      CupertinoActionSheetAction(
                          onPressed: () {
                            Fluttertoast.showToast(msg: "Action2");
                            Navigator.pop(context);
                          },
                          child: Text("Action 2")),
                      CupertinoActionSheetAction(
                          onPressed: () {
                            Fluttertoast.showToast(msg: "Action3");
                            Navigator.pop(context);
                          },
                          child: Text("Action 3")),
                    ],
                    cancelButton: CupertinoActionSheetAction(
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Cancle");
                          Navigator.pop(context);
                        },
                        child: Text("Cancle")),
                  )),
        ),
      ),
    );
  }
}

class Cupertinoactivityindicator extends StatefulWidget {
  const Cupertinoactivityindicator({Key? key}) : super(key: key);

  @override
  State<Cupertinoactivityindicator> createState() =>
      _CupertinoactivityindicatorState();
}

class _CupertinoactivityindicatorState
    extends State<Cupertinoactivityindicator> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CupertinoActivityIndicator.partiallyRevealed(
              progress: value,
              radius: 20,
              color: Colors.blue,
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () =>
                    Timer.periodic(Duration(seconds: 1), (Timer t) {
                      setState(() {
                        value==1? value=0:
                        value = value + 0.2;
                      });
                    }),
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}


class Cupertinoalertdialog extends StatefulWidget {
  const Cupertinoalertdialog({Key? key}) : super(key: key);

  @override
  State<Cupertinoalertdialog> createState() => _CupertinoalertdialogState();
}

class _CupertinoalertdialogState extends State<Cupertinoalertdialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () => showDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: Text("Cupertino ALert Dialog"),
                    content: Text("Click On Actions"),
                    actions: [
                      CupertinoDialogAction(
                        child: Text("Okay"),
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Okay");
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoDialogAction(
                        child: Text("Cancel"),
                        onPressed: () {
                          Fluttertoast.showToast(msg: "Cancel");
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoDialogAction(
                          child: Text("Maybe"),
                          onPressed: () {
                            Fluttertoast.showToast(msg: "Maybe");
                            Navigator.pop(context);
                          })
                    ],
                  ),
                ),
            child: Text("Press")),
      ),
    );
  }
}

class Cupbutandconmenu extends StatefulWidget {
  const Cupbutandconmenu({Key? key}) : super(key: key);

  @override
  State<Cupbutandconmenu> createState() => _CupbutandconmenuState();
}

class _CupbutandconmenuState extends State<Cupbutandconmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CupertinoContextMenu(actions: [
              CupertinoContextMenuAction(
                child: Text("SAVE"),
                onPressed: () => Navigator.pop(context),
              ),
              CupertinoContextMenuAction(
                child: Text(
                  "SAVE",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ], child: Image.asset("asset/spider.jpg")),
            CupertinoButton(
              child: Text("Cupertino Dialog"),
              onPressed: () {
                showCupertinoDialog(
                    context: context,
                    builder: (context) => Container(
                      child: Center(
                        child: Container(
                              height: 100,
                              width: 300,
                              color: Colors.white.withOpacity(0.7),
                              child: Center(
                                child: CupertinoButton(child: Text("Exit"), onPressed:()=>Navigator.pop(context)),
                              ),
                            ),
                      ),
                    ));
              },
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20),
            ),
            Container(
              height: 400,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                  onDateTimeChanged: (date) {}),
            )
          ],
        ),
      ),
    );
  }
}

class fullscreendialogtran extends StatefulWidget {
  const fullscreendialogtran({Key? key}) : super(key: key);

  @override
  State<fullscreendialogtran> createState() => _fullscreendialogtranState();
}

class _fullscreendialogtranState extends State<fullscreendialogtran>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CupertinoFullscreenDialogTransition(
              primaryRouteAnimation: _animationController,
              secondaryRouteAnimation: _animationController,
              child: Container(
                height: 100,
                width: 300,
                color: Colors.brown,
              ),
              linearTransition: false),
          Center(
            child: Row(
              children: [
                CupertinoButton(
                  child: Text("Forward"),
                  onPressed: () {
                    _animationController.forward();
                  },
                  color: Colors.blueGrey,
                ),
                CupertinoButton(
                  child: Text("Revers"),
                  onPressed: () {
                    _animationController.reverse();
                  },
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class cupage extends StatefulWidget {
  const cupage({Key? key}) : super(key: key);

  @override
  State<cupage> createState() => _cupage();
}

class _cupage extends State<cupage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Sample Code'),
        ),
        child: ListView(
          children: [
            CupertinoButton(
              onPressed: () => setState(() => _count++),
              child: const Icon(CupertinoIcons.add),
            ),
            Center(
              child: Text('You have pressed the button $_count times.'),
            ),
            Center(
              child: CupertinoButton(
                child: Text("second Page"),
                onPressed: () => Navigator.of(context).push(page22.rout()),
              ),
            ),
            Center(
              child: CupertinoButton(
                  child: Text("Picker"),
                  onPressed: () => showCupertinoModalPopup(
                      context: context,
                      builder: (c) => Container(
                            height: 300,
                            width: 300,
                            color: Colors.brown[200],
                            child: Center(
                              child: CupertinoPicker(
                                  itemExtent: 30,
                                  onSelectedItemChanged: (value) {},
                                  children: [
                                    Text("1"),
                                    Text("2"),
                                    Text("3"),
                                    Text("4"),
                                    Text("5"),
                                    Text("6"),
                                  ]),
                            ),
                          ))),
            )
          ],
        ),
      ),
    );
  }
}

class page22 extends StatelessWidget {
  const page22({Key? key}) : super(key: key);
  static Route<dynamic> rout() {
    return CupertinoPageRoute(builder: (context) => const page22());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(size: 200),
      ),
    );
  }
}

class bottomsheetcup extends StatefulWidget {
  const bottomsheetcup({Key? key}) : super(key: key);

  @override
  State<bottomsheetcup> createState() => _bottomsheetcupState();
}

class _bottomsheetcupState extends State<bottomsheetcup> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: /*Column(
        children: [
          CupertinoButton(
              child: Text("Click"),
              onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => CupertinoPopupSurface(
                        isSurfacePainted: false,
                        child: Center(
                          child: Container(
                              height: 100,
                              width: 100,
                              color: Colors.amberAccent,
                              child: Center(child: Text("Hellow"))),
                        ),
                      ))),*/
            CupertinoScrollbar(
                thickness: 12,
                controller: _scrollController,
                radius: Radius.circular(10),
                thicknessWhileDragging: 8,
                isAlwaysShown: true,
                child: ListView.builder(
                    controller: _scrollController,
                    itemCount: 20,
                    itemBuilder: (c, i) => ListTile(
                          title: Text("Index $i"),
                        )))
        //  ],
        //),
        );
  }
}

class segmentcup extends StatefulWidget {
  const segmentcup({Key? key}) : super(key: key);

  @override
  State<segmentcup> createState() => _segmentcupState();
}

class _segmentcupState extends State<segmentcup> {
  String _string = "A";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_string),
      ),
      body: Center(
        child: Column(
          children: [
            CupertinoSegmentedControl(children: {
              'A': Container(
                height: 100,
                width: 100,
                color: Colors.brown[200],
                child: Center(
                  child: Text("a"),
                ),
              ),
              'B': Container(
                height: 100,
                width: 100,
                color: Colors.brown[400],
                child: Center(
                  child: Text("b"),
                ),
              ),
              'C': Container(
                height: 100,
                width: 100,
                color: Colors.brown[600],
                child: Center(
                  child: Text("c"),
                ),
              ),
              'D': Container(
                height: 100,
                width: 100,
                color: Colors.brown[800],
                child: Center(
                  child: Text("d"),
                ),
              ),
            }, onValueChanged: (v) => setState(() => _string = v.toString()))
          ],
        ),
      ),
    );
  }
}

class cupslider extends StatefulWidget {
  const cupslider({Key? key}) : super(key: key);

  @override
  State<cupslider> createState() => _cupsliderState();
}

class _cupsliderState extends State<cupslider> {
  int val = 1;
  bool onoff = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(val.toString()),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
              child: /*CupertinoSlider(
                min: 0,
                max: 100,
                value: val,
                onChanged: (val1) => setState(() => val = val1)),*/
                  CupertinoSlidingSegmentedControl(children: {
            1: Container(
              height: 100,
              width: 100,
              color: Colors.brown[200],
              child: Center(
                child: Text("a"),
              ),
            ),
            2: Container(
              height: 100,
              width: 100,
              color: Colors.brown[400],
              child: Center(
                child: Text("b"),
              ),
            ),
            3: Container(
              height: 100,
              width: 100,
              color: Colors.brown[600],
              child: Center(
                child: Text("c"),
              ),
            ),
            4: Container(
              height: 100,
              width: 100,
              color: Colors.brown[800],
              child: Center(
                child: Text("d"),
              ),
            ),
          }, onValueChanged: (v) => setState(() => val = v as int))),
          CupertinoSwitch(
              value: onoff, onChanged: (v) => setState(() => onoff = v))
        ],
      ),
    );
  }
}

class cuptabscafold extends StatefulWidget {
  const cuptabscafold({Key? key}) : super(key: key);

  @override
  State<cuptabscafold> createState() => _cuptabscafoldState();
}

class _cuptabscafoldState extends State<cuptabscafold> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.menu)),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(builder: (BuildContext context) {
          return index == 0 ? firstpage() : firstpage1();
        });
      },
    );
  }
}

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.brown[50],
      body: Center(
        child: Column(
          children: [
            Text("page1"),
            CupertinoButton(
                child: Text("goto next page"),
                onPressed: () => Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (c) => firstpage2())))
          ],
        ),
      ),
    );
  }
}

class firstpage2 extends StatefulWidget {
  const firstpage2({Key? key}) : super(key: key);

  @override
  State<firstpage2> createState() => _firstpage2State();
}

class _firstpage2State extends State<firstpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.brown[50],
      body: Center(
        child: Column(
          children: [
            Text("page2"),
            CupertinoButton(
                child: Text("back"),
                onPressed: () => Navigator.pop(context))
          ],
        ),
      ),
    );
  }
}

class firstpage1 extends StatefulWidget {
  const firstpage1({Key? key}) : super(key: key);

  @override
  State<firstpage1> createState() => _firstpageState1();
}

class _firstpageState1 extends State<firstpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.brown[200],
      body: Center(
        child: Column(
          children: [
            Text("page1"),
            CupertinoButton(
                child: Text("goto next page"),
                onPressed: () => Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (c) => firstpage21())))
          ],
        ),
      ),
    );
  }
}

class firstpage21 extends StatefulWidget {
  const firstpage21({Key? key}) : super(key: key);

  @override
  State<firstpage21> createState() => _firstpage21State();
}

class _firstpage21State extends State<firstpage21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.brown[200],
      body: Center(
        child: Column(
          children: [
            Text("page2"),
            CupertinoButton(
                child: Text("back"),
                onPressed: () => Navigator.pop(context))
          ],
        ),
      ),
    );
  }
}
