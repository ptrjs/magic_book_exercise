// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:magic_book_exercise/core.dart';
import 'package:magic_book_exercise/state_util.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List menuItems = [
      {
        "label": "EDashboard1",
        "page": const Edashboard1View(),
      },
      {
        "label": "EDashboard2",
        "page": const Edashboard2View(),
      },
      {
        "label": "EDashboard3",
        "page": const Edashboard3View(),
      }
    ];
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        ListView.builder(
          itemCount: menuItems.length,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          clipBehavior: Clip.none,
          itemBuilder: (context, index) {
            var item = menuItems[index];
            return ListTile(
              onTap: () {
                Get.to(item["page"]);
              },
              title: Text(item["label"]),
              subtitle: const Text("john.doe@gmail.com"),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.chevron_right,
                  size: 24.0,
                ),
              ),
            );
          },
        ),
      ]),
    );
  }
}
