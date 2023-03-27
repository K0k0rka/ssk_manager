import 'package:flutter/material.dart';

import '../widgets/left_side_menu.dart';

class EquipmentAccountingCardPage extends StatefulWidget {
  const EquipmentAccountingCardPage({super.key});

  @override
  State<EquipmentAccountingCardPage> createState() =>
      _EquipmentAccountingCardPageState();
}

class _EquipmentAccountingCardPageState
    extends State<EquipmentAccountingCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SSK Resource / EquipmentAccountingCardPage'),
        actions: const [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(null),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const LeftSideMenu(),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: DefaultTabController(
                          length: 2,
                          initialIndex: 0,
                          child: Column(
                            children: const [
                              TabBar(
                                labelColor: Colors.black87,
                                indicatorColor: Colors.amber,
                                tabs: [
                                  Tab(
                                    text: 'Начальная страница',
                                  ),
                                  Tab(
                                    text: 'Пользователи',
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
