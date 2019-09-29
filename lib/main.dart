import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light
    ));
    runApp(MyApp());
} 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'sss',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sss'),
      ),
      body: ListView(
        children: <Widget>[
          new CardTu("ใครบริหารประเทศ!!","OMG","https://www.khaosod.co.th/wp-content/uploads/2018/09/S__75391023.jpg"),
          new CardTu("ใครบริหารประเทศ2!!","OMG2","https://www.khaosod.co.th/wp-content/uploads/2018/09/S__75391024.jpg"),
          new CardTu("ใครบริหารประเทศ3!!","OMG3","https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.0-9/15781792_1842625969360296_1900072732989366355_n.png?_nc_cat=100&_nc_eui2=AeGtgsTt-I9wFZqLt2DDNx_1JzTiabRJmTr6YJu6KBSgl1xnj8x0lB97A0pSXU7-S_j95Yqth_TssHRTGGoSmqAltHltluVt4ehn-zepk4ZDOw&_nc_oc=AQmA9lfPllwV4aGsb2Em4FCn7OZYVEENO4Ytwez3TmPODfCcDnLtChigon5cNsFxNtI&_nc_ht=scontent.fbkk2-8.fna&oh=e2800f3caaf7d5fc7d35b0b783237b8a&oe=5E36CA0D"),
          new CardTu("ใครบริหารประเทศ4!!","OMG4","https://www.matichon.co.th/wp-content/uploads/2018/01/461848F9-2C7C-4040-9F47-09147B45F7ED.jpeg"),  
        ],
      ),
    );
  }
}

class CardTu extends StatelessWidget {
  final String _text;
  final String _author;
  final String _imageUrl;
  const CardTu(this._text,this._author,this._imageUrl,{
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card (
      margin: EdgeInsets.all(8),
      elevation: 5,
      child: Column(
        children: <Widget>[
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage('$_imageUrl'))
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$_text',
            style: TextStyle(fontSize: 20,),
            ),
          ),
          Text('$_author')
        ],
      ),
    );
  }
}