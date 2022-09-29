import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class PdfView extends StatelessWidget {
  const PdfView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    Uint8List? uint8list;
    Future<Uint8List?> getAns() async {
      var response = await Dio().get(
          'https://store.adda247.com/13285_6316_ACEDEFENCEGeneralAwarenesseBook1654063435.doc',
          options:
              Options(headers: headersList, responseType: ResponseType.bytes));
      uint8list = response.data;
      return response.data!;
    }

    return Scaffold(
        appBar: AppBar(),
          body:  FutureBuilder(
            future: getAns(),
            builder: (context, snapshot) => SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: PDFView(pdfData: uint8list,)
          ),
        )
      
    );
  }
}

class PdfViewer {
}
