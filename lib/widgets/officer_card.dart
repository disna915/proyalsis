import 'package:flutter/material.dart';
import '../models/officer_model.dart';

class OfficerCard extends StatelessWidget {
  final Officer officer;
  const OfficerCard({super.key, required this.officer});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(officer.name,
                style: Theme.of(context).textTheme.titleLarge),
            Text('${officer.designation} - ${officer.department}'),
            Text("Email: ${officer.contactDetails.email}"),
            Text("Phone: ${officer.contactDetails.phone}"),
            const SizedBox(height: 10),
            Text("Assignments:",
                style: Theme.of(context).textTheme.titleMedium),
            ...officer.assignments.map((a) => Text(
                "• ${a.title} (${a.status}) - ${a.location}")),
          ],
        ),
      ),
    );
  }
}
