import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DealsList extends StatelessWidget {

  DealsList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _buildCardList()
      // body: _buildList()
      body: StreamBuilder(
        stream:Firestore.instance.collection('post').snapshots(),
        builder:(context,snapshot){
          if(!snapshot.hasData){
            const Text('Loading');
          }
          else{
            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context,index){
                DocumentSnapshot mypost=snapshot.data.documents[index];
                return _tile('${mypost['deals']}','${mypost['title']}','${mypost['image']}');
                // return null;
              }
              );
          }

        }
      )

      
    );
  }
}
Widget _buildCardList() => ListView(children:[
  _buildCard(),
  _buildCard(),
  _buildCard(),
],);

// Widget _buildList() => ListView(
//       children: [
//         _tile('25¢ shots ', 'AJs', 'images/bar2.jpg'),
//         _tile('\$1 Bingo Wells!!!', 'Mickys', 'images/bar3.jpg'),
//         _tile('No Cover for Mugs', 'Cys', 'images/bar1.jpg'),
//         // _tile('TwoFer Tacos!', 'Es Tas', 'images/bar4.jpg'),

//       ],
//     );

Widget _buildList() => ListView(
      children: [
        _tile('25¢ shots ', 'AJs', 'images/bar2.jpg'),
        _tile('\$1 Bingo Wells!!!', 'Mickys', 'images/bar3.jpg'),
        _tile('No Cover for Mugs', 'Cys', 'images/bar1.jpg'),
        // _tile('TwoFer Tacos!', 'Es Tas', 'images/bar4.jpg'),

      ],
    );


ListTile _tile(String title, String subtitle, String img) => ListTile(
      title: Text(title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: AssetImage(img),
      ),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        //Added action after clicked deal here
            print('Clicked Deal');
          },
      // contentPadding: const EdgeInsets.symmetric(vertical: 8.0)
    );
      Widget _buildCard() => SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text('1625 Main Street',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('My City, CA 99984'),
              leading: Icon(
                Icons.restaurant_menu,
                color: Colors.blue[500],
              ),
            ),
            Divider(),
            ListTile(
              title: Text('(408) 555-1212',
                  style: TextStyle(fontWeight: FontWeight.w500)),
              leading: Icon(
                Icons.contact_phone,
                color: Colors.blue[500],
              ),
            ),
            ListTile(
              title: Text('costa@example.com'),
              leading: Icon(
                Icons.contact_mail,
                color: Colors.blue[500],
              ),
            ),
          ],
        ),
      ),
    );