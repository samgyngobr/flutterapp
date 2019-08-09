import 'package:flutter/material.dart';
import '../components/details/FormDt.dart';
import '../components/details/DetailsDt.dart';
import '../components/details/InteractionsDt.dart';
import '../components/details/HistoryDt.dart';

class Details extends StatefulWidget {
  Details({Key key, this.title}) : super(key: key);

  String title = 'Details';

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'Form'),
              Tab(text: 'Details'),
              Tab(text: 'Interactions'),
              Tab(text: 'History'),
            ],
          ),
          title: Text('Details'),
        ),
        body: TabBarView(
          children: [
            FormDt(),
            DetailsDt(),
            InteractionsDt(),
            HistoryDt(),
          ],
        ),
      ),
    );
  }
}
