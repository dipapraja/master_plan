import 'package:flutter/material.dart';
import './views/plan_screen.dart';
import './provider/plan_provider.dart'; // pastikan path sesuai lokasi file provider-mu
import './models/data_layer.dart';   // jika Plan didefinisikan di sini

void main() => runApp(const MasterPlanApp());

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: PlanProvider(
        notifier: ValueNotifier<Plan>(const Plan()), // menyediakan state Plan
        child: const PlanScreen(), // halaman utama
      ),
    );
  }
}