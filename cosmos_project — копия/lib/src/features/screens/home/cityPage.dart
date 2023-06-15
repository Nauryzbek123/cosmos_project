import 'package:auto_route/auto_route.dart';
import 'package:cosmos_project/src/features/app/router/router.gr.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/MontseratText.dart';
import '../../../core/widgets/column_spacer.dart';
import '../../../core/widgets/row_spacer.dart';

class CityPage extends StatelessWidget {
  const CityPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body:   Column(
                children: [
                  Container(
                    height: 100, 
                    width: double.infinity, 
                    color: Colors.grey,
                  ),
                  ColumnSpacer(2),
                  Row(
                    children: [
                      const RowSpacer(1),
                      GestureDetector(
                        child: Icon( Icons.close_outlined, ),
                      ),
                      const RowSpacer(12),
                       const MontserratText("Ваш город", Colors.black, 15, FontWeight.bold),
                      const RowSpacer(10),
                      GestureDetector(
                        child:  const MontserratText("Готово", Colors.blueAccent, 15, FontWeight.normal),
                        onTap: () => AutoRouter.of(context).push(BottomNavBAR()),
                      )
                    ],
                  ),
                  const ColumnSpacer(2),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Поиск по городам',
                                prefixIcon: IconButton(
                                  icon: const Icon(Icons.search,size: 35,),
                                  onPressed: () {},
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                              ),
                            ),
                  ),
                  const ColumnSpacer(2),
                  Expanded(
                    child: ListView.separated(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return const ListTile(
                            title: Text("jdksjsd"),
                
                          );
                          
                        },
                        separatorBuilder: (context, index) => 
                        const Divider(color: Colors.grey),
                        ),
                  ),
                ],
    )
    );
  }
}
