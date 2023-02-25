// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecle_downloads_path_provider/lecle_downloads_path_provider.dart';
import 'package:project_1/blocs/filler/filler_bloc.dart';
import 'package:project_1/blocs/form/form_bloc.dart';
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
              child: buildCard(context),
            ),
          ])));
}

Widget buildCard(BuildContext context) => Container(
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
              final filler = BlocProvider.of<FillerBloc>(context);
              final resultform = BlocProvider.of<ResultFormBloc>(context);
              var template = await rootBundle.load('assets/template.pdf');
              Uint8List documentBytes = template.buffer.asUint8List();
              final PdfDocument document =
                  PdfDocument(inputBytes: documentBytes);
              PdfForm form = document.form;
              int i = 0;
              //Filler
              while (i <= 5) {
                PdfTextBoxField field = form.fields[i] as PdfTextBoxField;
                field.text = filler.state.info[i];
                i++;
              }
              //ResultForm
              while (i <= 79) {
                Map<String, List> answers = resultform.state.answers;
                String? key;
                int curr_page;
                if (i <= 13) {
                  key = "PH";
                  curr_page = 0;
                  while (i <= 13) {
                    PdfTextBoxField field = form.fields[i] as PdfTextBoxField;
                    int inner_field = i % 2;
                    field.text = answers[key]![curr_page][inner_field];
                    if (inner_field == 1) {
                      curr_page++;
                    }
                    i++;
                  }
                }
                if (i > 13 && i <= 19) {
                  key = "TE";
                  curr_page = 0;
                  while (i > 13 && i <= 19) {
                    PdfTextBoxField field = form.fields[i] as PdfTextBoxField;
                    int inner_field = i % 2;
                    field.text = answers[key]![curr_page][inner_field];
                    if (inner_field == 1) {
                      curr_page++;
                    }
                    i++;
                  }
                }
                if (i > 19 && i <= 29) {
                  key = "DOMP";
                  curr_page = 0;
                  while (i > 19 && i <= 29) {
                    PdfTextBoxField field = form.fields[i] as PdfTextBoxField;
                    int inner_field = i % 2;
                    field.text = answers[key]![curr_page][inner_field];
                    if (inner_field == 1) {
                      curr_page++;
                    }
                    i++;
                  }
                }
                if (i > 29 && i <= 45) {
                  key = "SAPOM";
                  curr_page = 0;
                  while (i > 29 && i <= 45) {
                    PdfTextBoxField field = form.fields[i] as PdfTextBoxField;
                    int inner_field = i % 2;
                    field.text = answers[key]![curr_page][inner_field];
                    if (inner_field == 1) {
                      curr_page++;
                    }
                    i++;
                  }
                }
                if (i > 45 && i <= 59) {
                  key = "CSSDA";
                  curr_page = 0;
                  while (i > 45 && i <= 59) {
                    PdfTextBoxField field = form.fields[i] as PdfTextBoxField;
                    int inner_field = i % 2;
                    field.text = answers[key]![curr_page][inner_field];
                    if (inner_field == 1) {
                      curr_page++;
                    }
                    i++;
                  }
                }
                if (i > 59 && i <= 71) {
                  key = "CS";
                  curr_page = 0;
                  while (i > 59 && i <= 71) {
                    PdfTextBoxField field = form.fields[i] as PdfTextBoxField;
                    int inner_field = i % 2;
                    field.text = answers[key]![curr_page][inner_field];
                    if (inner_field == 1) {
                      curr_page++;
                    }
                    i++;
                  }
                }
                if (i > 71 && i <= 79) {
                  key = "MROV";
                  curr_page = 0;
                  while (i > 71 && i <= 79) {
                    PdfTextBoxField field = form.fields[i] as PdfTextBoxField;
                    int inner_field = i % 2;
                    field.text = answers[key]![curr_page][inner_field];
                    if (inner_field == 1) {
                      curr_page++;
                    }
                    i++;
                  }
                }
              }

              document.form.flattenAllFields();
              Directory? downloads = await DownloadsPath.downloadsDirectory();
              List<int> output_bytes = await document.save();
              File('${downloads?.path}/${filler.state.info[0]}.pdf')
                  .writeAsBytesSync(output_bytes);
              document.dispose();
              OpenFile.open('${downloads?.path}/${filler.state.info[0]}.pdf');
            },
            child: Text('Generate', style: GoogleFonts.hahmlet(fontSize: 17)),
          )
        ],
      ),
    ));
