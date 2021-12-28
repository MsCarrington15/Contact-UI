import 'package:contact_ui/home_page.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'My Contacts',
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/image1.jpg'),
            ),
          ],
        ),
        body: ListView(padding: const EdgeInsets.all(15), children: [
          SizedBox(
            height: 50,
            width: double.infinity,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 6,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search name or number',
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          const Text('Recents'),
          const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent[100],
                child: const Center(
                  child: Text(
                    'R',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              title: const Text('Rhoda'),
              subtitle: const Text('+23357698234'),
            ),
          ),
          const Divider(),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Center(
                child: Text(
                  'S',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            title: Text('Sparkles'),
            subtitle: Text('+23350699935'),
          ),
          const Divider(),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.indigo,
              child: Center(
                child: Text(
                  'B',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            title: Text('Benedicta'),
            subtitle: Text('+233548756321'),
          ),
          const Divider(),
          const Text('Contacts'),
          const Padding(padding: EdgeInsets.all(14)),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red.shade300,
              child: const Center(
                child: Text('A',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            title: const Text('Ama Nyrakoa'),
            subtitle: const Text('+442652145152158'),
            trailing: Column(
              children: const [Text('A'), Icon(Icons.more_horiz)],
            ),
          ),
          const Divider(),
          const ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Center(
                  child: Text('A',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      )),
                )),
            title: Text('Arianna'),
            subtitle: Text('+33948521548415'),
            trailing: Icon(
              Icons.more_horiz,
            ),
          ),
          const Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green.shade400,
              child: const Center(
                child: Text('B',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            title: const Text('Benedicta'),
            subtitle: const Text('+233548756321'),
            trailing: const Icon(Icons.more_horiz),
          ),
          const Divider(),
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                'B',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text('Bright'),
            subtitle: Text('+233278695412'),
            trailing: FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.add),
            ),
          ),
        ]));
  }
}
