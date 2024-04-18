import 'package:flutter/material.dart';
import 'package:smart_plastic_mobile/utlis/colors.dart';
import 'package:smart_plastic_mobile/widgets/drawer_widget.dart';
import 'package:smart_plastic_mobile/widgets/text_widget.dart';

class RecordsPage extends StatelessWidget {
  const RecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: primary,
        centerTitle: true,
        title: TextWidget(
          text: 'Records',
          fontSize: 18,
          fontFamily: 'Bold',
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            showCheckboxColumn: false,
            border: TableBorder.all(),
            columnSpacing: 50,
            columns: [
              DataColumn(
                label: TextWidget(
                  text: 'ID Number',
                  fontSize: 18,
                  fontFamily: 'Bold',
                ),
              ),
              DataColumn(
                label: TextWidget(
                  text: 'Item Name',
                  fontSize: 18,
                  fontFamily: 'Bold',
                ),
              ),
              DataColumn(
                label: TextWidget(
                  text: 'Item Points',
                  fontSize: 18,
                  fontFamily: 'Bold',
                ),
              ),
              DataColumn(
                label: TextWidget(
                  text: 'Date and Time',
                  fontSize: 18,
                  fontFamily: 'Bold',
                ),
              ),
            ],
            rows: [
              for (int i = 0; i < 100; i++)
                DataRow(
                    color: MaterialStateColor.resolveWith(
                      (states) => i % 2 == 0 ? Colors.white : Colors.grey[200]!,
                    ),
                    cells: [
                      DataCell(
                        TextWidget(
                          text: '${i + 1}',
                          fontSize: 14,
                          fontFamily: 'Medium',
                          color: Colors.grey,
                        ),
                      ),
                      DataCell(
                        TextWidget(
                          text: 'Sardines',
                          fontSize: 14,
                          fontFamily: 'Medium',
                          color: Colors.grey,
                        ),
                      ),
                      DataCell(
                        TextWidget(
                          text: '150 pts',
                          fontSize: 14,
                          fontFamily: 'Medium',
                          color: Colors.grey,
                        ),
                      ),
                      DataCell(
                        TextWidget(
                          text: DateTime.now().toString(),
                          fontSize: 14,
                          fontFamily: 'Medium',
                          color: Colors.grey,
                        ),
                      ),
                    ])
            ],
          ),
        ),
      ),
    );
  }
}
