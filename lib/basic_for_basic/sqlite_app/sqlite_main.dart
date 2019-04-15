import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlitePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/': (context) => HomePage(), '/list': (context) => ListPage()},
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controllerA = TextEditingController();
  final _controllerB = TextEditingController();
  final _controllerC = TextEditingController();
  final TextStyle styleA = TextStyle(fontSize: 28.0, color: Colors.black87);

  final TextStyle styleB = TextStyle(fontSize: 24.0, color: Colors.black87);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Home Screen",
                style: styleA,
              ),
              Text(
                'Name:',
                style: styleB,
              ),
              TextField(
                controller: _controllerA,
                style: styleA,
              ),
              Text(
                'Mail:',
                style: styleB,
              ),
              TextField(
                controller: _controllerB,
                style: styleA,
              ),
              Text(
                'Tel:',
                style: styleB,
              ),
              TextField(
                controller: _controllerC,
                style: styleA,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('add'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('list'),
            icon: Icon(Icons.list),
          ),
        ],
        onTap: (int index) {
          if (index == 1) {
            Navigator.pushNamed(context, '/list');
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () {
            saveData();
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      title: Text("Saved"),
                      content: Text("insert data into database"),
                    ));
          }),
    );
  }

  void saveData() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "mydata.db");
    String data1 = _controllerA.text;
    String data2 = _controllerB.text;
    String data3 = _controllerC.text;

    String query = 'Insert INTO mydata(name, mail, tel) values("$data1",'
        '"$data2",'
        '"$data3")';

    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute("create table if not exists mydata "
          "id INTEGER PRIMARY KEY,"
          "name TEXT,"
          "mail TEXT,"
          "tel TEXT");
    });

    await database.transaction((txn) async {
      int id = await txn.rawInsert(query);
      print("insert $id");
    });

    setState(() {
      _controllerA.text = "";
      _controllerB.text = "";
      _controllerC.text = "";
    });
  }
}

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<Widget> _items = <Widget>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void getItems() async {

    List<Widget> list = <Widget>[];
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, "mydata.db");
    Database database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute("create table if not exists mydata "
              "id INTEGER PRIMARY KEY,"
              "name TEXT,"
              "mail TEXT,"
              "tel TEXT");
        });

      List<Map> result = await database.rawQuery("select * from mydata");
      for(Map item in result){
        list.add(
          ListTile(
            title: Text(item['name']),
            subtitle: Text(item['mail'] + ' ' + item['tel']),
          )
        );
      }
      
      setState(() {
        _items = list;
      });








  }
}
