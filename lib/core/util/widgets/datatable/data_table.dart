import 'package:flutter/material.dart';
import 'package:flk_adisyon/core/util/widgets/datatable/foods.dart';
class DataTables extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DataTablesState();
  }
}

class DataTablesState extends State<DataTables> {
  final List<String> log = <String>[];


  Widget _buildTable({ int sortColumnIndex, bool sortAscending = true }) {
    return DataTable(
      sortColumnIndex: sortColumnIndex,
      sortAscending: sortAscending,
      onSelectAll: (bool value) {
        log.add('select-all: $value');
      },
      columns: <DataColumn>[
        const DataColumn(
          label: Text('Name'),
          tooltip: 'Name',
        ),
        DataColumn(
          label: const Text('Calories'),
          tooltip: 'Calories',
          numeric: true,
          onSort: (int columnIndex, bool ascending) {
            log.add('column-sort: $columnIndex $ascending');
          },
        ),
      ],
      rows: kDesserts.map<DataRow>((Foods dessert) {
        return DataRow(
          key: Key(dessert.name),
          onSelectChanged: (bool selected) {
            log.add('row-selected: ${dessert.name}');
          },
          cells: <DataCell>[
            DataCell(
              Text(dessert.name),
            ),
            DataCell(
              Text('${dessert.calories}'),
              showEditIcon: true,
              onTap: () {
                log.add('cell-tap: ${dessert.calories}');
              },
            ),
          ],
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTable(sortColumnIndex: 0, sortAscending: true);
  }




}