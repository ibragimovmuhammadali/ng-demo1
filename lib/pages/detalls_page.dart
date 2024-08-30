import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  static const String id = "details_page";
  final String? userId;

  const DetailsPage({super.key, this.userId});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  _exitDetilsPage(){
    Map map = {"data":"It works"};
    Navigator.of(context).pop(map);
  }
  @override
  void initState() {
    
    super.initState();
    print("initState: ${widget.userId}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Detals Page"),
      ),
      body: Center(
        child: MaterialButton(
            onPressed: (){
              _exitDetilsPage();
    },
           color: Colors.blue,
             child: Text("Exit: ${widget.userId}") ,
      ),
      ),
    );
  }
}
