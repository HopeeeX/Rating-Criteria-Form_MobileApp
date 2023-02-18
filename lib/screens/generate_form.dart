// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecle_downloads_path_provider/lecle_downloads_path_provider.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:open_file/open_file.dart';

class generate_form extends StatefulWidget {
  @override
  _generate_formState createState() => _generate_formState();
}

class _generate_formState extends State<generate_form> {
  @override
  Widget build(BuildContext context) => SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Generate Form'),
            backgroundColor: Color.fromRGBO(121, 112, 112, 1.0),
            actions: [
              Container(
                  child: TextButton(
                      onPressed: () => context.go("/"),
                      child: Text(
                        'Sign Out',
                        style: GoogleFonts.hahmlet(
                            fontSize: 12,
                            color: Color.fromARGB(206, 255, 255, 255)),
                      )))
            ],
          ),
          body: Column(children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 80),
              child: buildCard(),
            ),
          ])));
}

Widget buildCard() => Container(
    width: 350,
    height: 190,
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 7,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 23)),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              'Click the Generate button to download the form',
              textAlign: TextAlign.center,
              style: GoogleFonts.hahmlet(
                fontSize: 17,
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
            top: 36,
          )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xFFAA2121),
                minimumSize: Size(300, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () async {
              var template = await rootBundle.load('assets/template.pdf');
              Uint8List audioUint8List = template.buffer
                  .asUint8List(template.offsetInBytes, template.lengthInBytes);
              List<int> input_bytes = audioUint8List.cast<int>();
              final PdfDocument document = PdfDocument(inputBytes: input_bytes);
              Directory? downloads = await DownloadsPath.downloadsDirectory();
              File('${downloads?.path}/output.pdf')
                  .writeAsBytes(await document.save());
              document.dispose();
              OpenFile.open('${downloads?.path}/output.pdf');
            },
            child: Text('Generate', style: GoogleFonts.hahmlet(fontSize: 17)),
          )
        ],
      ),
    ));

Future<void> writeToFile(ByteData data, String path) {
  final buffer = data.buffer;
  return new File(path)
      .writeAsBytes(buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
}
