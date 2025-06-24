import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/officer_provider.dart';
import '../widgets/officer_card.dart';
import '../widgets/officer_table.dart';
import '../utils/responsive.dart';

class OfficerScreen extends StatelessWidget {
  const OfficerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<OfficerProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Officer Directory")),
      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Responsive.isWeb(context)
          ? OfficerTable(officers: provider.officers)
          : ListView.builder(
        itemCount: provider.officers.length,
        itemBuilder: (context, index) =>
            OfficerCard(officer: provider.officers[index]),
      ),
    );
  }
}
