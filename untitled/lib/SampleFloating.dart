import 'package:flutter/material.dart';

class SampleFloating extends StatefulWidget {
  const SampleFloating({Key? key}) : super(key: key);

  @override
  State<SampleFloating> createState() => _SampleFloatingState();
}

class _SampleFloatingState extends State<SampleFloating> {
  var myText;
  TextEditingController textFildController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Floating Action Button"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                height: 100,
                color: Colors.white,
                width: 100,
                alignment: Alignment.center,
                child:TextField(
                  controller: textFildController,
                  decoration: const InputDecoration(
                      hintText: "Enter your name",
                      border: OutlineInputBorder(),
                      labelText: "name"
                  ),
                )
              ),
            Container(
              height: 100,
              color: Colors.white,
              width: 100,
              child: Text(
              "Name: $myText",
              style: TextStyle(color: Colors.red),
          ),
            ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = textFildController.text;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
          child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Mehul"),
            accountEmail: Text("Mehul@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1549692520-acc6669e2f0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80")),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("mehul"),
            subtitle: Text("variya"),
            trailing: Icon(Icons.send),
          )
        ],
      )),
    );
  }
}
