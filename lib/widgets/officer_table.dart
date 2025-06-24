import 'package:flutter/material.dart';
import '../models/officer_model.dart';

class OfficerTable extends StatelessWidget {
  final List<Officer> officers;
  const OfficerTable({super.key, required this.officers});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Designation")),
          DataColumn(label: Text("Department")),
          DataColumn(label: Text("Email")),
          DataColumn(label: Text("Phone")),
          DataColumn(label: Text("Assignments")),
        ],
        rows: officers
            .map(
              (o) => DataRow(
            cells: [
              DataCell(Text(o.name)),
              DataCell(Text(o.designation)),
              DataCell(Text(o.department)),
              DataCell(Text(o.contactDetails.email)),
              DataCell(Text(o.contactDetails.phone)),
              DataCell(Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: o.assignments
                    .map((a) =>
                    Text("• ${a.title} (${a.status})"))
                    .toList(),
              )),
            ],
          ),
        )
            .toList(),
      ),
    );
  }
}
