import 'package:flutter/material.dart';
import 'package:sample/ui/view/pdfview.dart';

class ListData extends StatelessWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body :ListTile(
        onTap: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PdfView()),
      )
    ,
                  leading: Icon(Icons.list),
                  trailing: Text(
                    "GFG",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text("List item")),
    );
  }
}

