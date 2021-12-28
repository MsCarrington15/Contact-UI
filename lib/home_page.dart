import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Contacts',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/image3.jpg'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Aurelia Carrington',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Accra,Ghana',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Mobile'),
              subtitle: const Text('+2335099887745'),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: const [
                Icon(
                  Icons.message,
                  color: Colors.black,
                ),
                Icon(
                  Icons.phone,
                  color: Colors.black,
                )
              ]),
            ),
            ListTile(
              title: const Text('Email'),
              subtitle: const Text(
                'carrington@gmail.com',
                style: TextStyle(fontSize: 14.0),
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: const [
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
              ]),
            ),
            const ListTile(
              title: Text('Group'),
              subtitle: Text('Uni Friends', style: TextStyle(fontSize: 14.0)),
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Account Linked'),
              ),
              color: Colors.white,
            ),
            const ListTile(
                title: Text('Telegram'),
                trailing: Icon(
                  SimpleIcons.telegram,
                  color: Colors.blue,
                )),
            const ListTile(
              title: Text('WhatsApp'),
              trailing: Icon(
                SimpleIcons.whatsapp,
                color: Colors.green,
              ),
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('More Options'),
              ),
              color: Colors.white,
            ),
            const ListTile(title: Text('Share Contacts')),
            const ListTile(title: Text('QR Code')),
          ],
        ));
  }
}
