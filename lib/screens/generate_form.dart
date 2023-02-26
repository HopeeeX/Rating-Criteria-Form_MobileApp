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
import 'package:project_1/cubits/page/page_cubit.dart';
import 'package:project_1/cubits/scroll/scroll_cubit.dart';
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
                      onPressed: () {
                        BlocProvider.of<ResultFormBloc>(context)
                            .emit(ResultFormState.initial());
                        BlocProvider.of<FillerBloc>(context)
                            .emit(FillerState.initial());
                        BlocProvider.of<PageCubit>(context).emit(0);
                        BlocProvider.of<ScrollCubit>(context).emit(0);
                        context.go("/");
                      },
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
              final FillerBloc filler = BlocProvider.of<FillerBloc>(context);
              final ResultFormBloc resultform =
                  BlocProvider.of<ResultFormBloc>(context);
              ByteData template = await rootBundle.load('assets/template.pdf');
              Uint8List documentBytes = template.buffer.asUint8List();
              final PdfDocument document =
                  PdfDocument(inputBytes: documentBytes);
              int i = 0;
              //Filler
              while (i <= 5) {
                for (int j = 0; j <= document.form.fields.count - 1; j++) {
                  if (document.form.fields[j].name! == i.toString()) {
                    PdfTextBoxField field =
                        document.form.fields[j] as PdfTextBoxField;
                    field.text = filler.state.info[i];
                  }
                }
                i++;
              }
              //ResultForm
              while (i <= 79) {
                Map<String, List> answers = resultform.state.answers;
                String? key;
                int curr_page;
                if (i <= 13) {
                  key = "PH";
                  while (i <= 13) {
                    if (i <= 9) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 6][0].toString();
                        }
                      }
                    }
                    if (i > 9 && i <= 13) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 10][1].toString();
                        }
                      }
                    }
                    i++;
                  }
                }

                if (i <= 19) {
                  key = "TE";
                  while (i <= 19) {
                    if (i <= 16) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 14][0].toString();
                        }
                      }
                    }
                    if (i > 16 && i <= 19) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 17][1].toString();
                        }
                      }
                    }
                    i++;
                  }
                }

                if (i <= 29) {
                  key = "DOMP";
                  while (i <= 29) {
                    if (i <= 24) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 20][0].toString();
                        }
                      }
                    }
                    if (i > 24 && i <= 29) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 25][1].toString();
                        }
                      }
                    }
                    i++;
                  }
                }

                if (i <= 45) {
                  key = "SAPOM";
                  while (i <= 45) {
                    if (i <= 37) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 30][0].toString();
                        }
                      }
                    }
                    if (i > 37 && i <= 45) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 38][1].toString();
                        }
                      }
                    }
                    i++;
                  }
                }

                if (i <= 59) {
                  key = "CSSDA";
                  while (i <= 59) {
                    if (i <= 52) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 46][0].toString();
                        }
                      }
                    }
                    if (i > 52 && i <= 59) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 53][1].toString();
                        }
                      }
                    }
                    i++;
                  }
                }

                if (i <= 71) {
                  key = "CS";
                  while (i <= 71) {
                    if (i <= 65) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 60][0].toString();
                        }
                      }
                    }
                    if (i > 65 && i <= 71) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 66][1].toString();
                        }
                      }
                    }
                    i++;
                  }
                }

                if (i <= 79) {
                  key = "MROV";
                  while (i <= 79) {
                    if (i <= 75) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 72][0].toString();
                        }
                      }
                    }
                    if (i > 75 && i <= 79) {
                      for (int j = 0;
                          j <= document.form.fields.count - 1;
                          j++) {
                        if (document.form.fields[j].name! == i.toString()) {
                          PdfTextBoxField field =
                              document.form.fields[j] as PdfTextBoxField;
                          field.text = answers[key]![i - 76][1].toString();
                        }
                      }
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
