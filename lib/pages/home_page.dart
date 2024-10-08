import 'package:flutter/material.dart';
import 'package:ngdemo_2/pages/detalls_page.dart';
import 'package:ngdemo_2/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  String text = "Open Details";

  _callsDetailsPage() {
    //This fuction opens details page.


    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) {
          return DetailsPage();
        }));
  }

  _callsDetailsPage2(){
    Navigator.of(context).pushReplacementNamed(DetailsPage.id);
  }

   _callsDetailsPage3() async {
    String userId = "2002";

    Map result = await Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) {
          return DetailsPage(userId: userId,);
        }));
    print(result);

    setState(() {
      text = result.toString();
    });
  }

  _callsDetailsPage4(){
    String userId = "2564";
    Navigator.of(context).pushReplacementNamed(SettingsPage.id, arguments: userId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home Page"),
      ) ,
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
            onPressed:(){
              _callsDetailsPage4();

            },

        child: Text(text),
      ),
      ),
    );
  }
}

