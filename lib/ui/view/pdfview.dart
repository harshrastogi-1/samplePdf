import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

class PdfView extends StatelessWidget {
  const PdfView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var headersList = {
      'AND_APP_VERSION': '353',
      'X-Auth-Token': 'fpoa43edty5',
      'X-JWT-Token':
          'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhbWl0a3Iubml0anNyQGdtYWlsLmNvbSIsImF1ZCI6IjkxNzQzMTQiLCJpYXQiOjE2NTg2NDk2NzYsImlzcyI6ImFkZGEyNDcuY29tIiwibmFtZSI6ImFtaXQga3VtYXIifQ.sSilvzVcjEfhE5EOPyhwP5igxJuWkbMsI4sIAUJyv9rN5BVkzEOWP-z9n5-mMTnVXsvpNL1bCKNrlDVlym4YBA'
    };

    Future<Uint8List> getAns() async {
      var response = await Dio().get(
          'https://store.adda247.com/14767_6703_2OrderRankingDirectionDistanceandWordFormation1656928007.doc',
          options:
              Options(headers: headersList, responseType: ResponseType.bytes));

      return response.data;
    }

    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(
            future: getAns(),
            builder: (context, snapshot) => SizedBox(
                  height: Get.height,
                  width: Get.width,
                  child: PdfViewer.openFutureData(
         
                    () {
                    return getAns();
            }
          ),
        )
      )
    );
  }
}
