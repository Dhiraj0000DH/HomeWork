import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homework/bloc/dashboard_bloc.dart';

class DashboardBlocView extends StatelessWidget {
  const DashboardBlocView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: <Widget>[
          Card(
            color: Colors.blue[100], // Background color for the card
            child: InkWell(
              onTap: () {
                context.read<DashboardBloc>().openAreaCircleView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.pie_chart,
                      size: 48, color: Colors.blue), // Icon color
                  Text('Area Of Circle',
                      style: TextStyle(color: Colors.blue)), // Text color
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green[100], // Background color for the card
            child: InkWell(
              onTap: () {
                context.read<DashboardBloc>().openSimpleInterestView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.calculate,
                      size: 48, color: Colors.green), // Icon color
                  Text('Simple Interest',
                      style: TextStyle(color: Colors.green)), // Text color
                ],
              ),
            ),
          ),
          Card(
            color: Colors.orange[100], // Background color for the card
            child: InkWell(
              onTap: () {
                context.read<DashboardBloc>().openStudentView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.person, size: 48, color: Colors.orange),
                  Text('Student List', style: TextStyle(color: Colors.orange)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
