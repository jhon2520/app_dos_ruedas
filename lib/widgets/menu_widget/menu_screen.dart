import 'package:dos_ruedas_app/const/app_colors.dart';
import 'package:dos_ruedas_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {

  final CustomMenuItem currentItem;
  final ValueChanged<CustomMenuItem> onSelectedItem;



  const MenuPage({Key? key, required this.currentItem, required this.onSelectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: AppColors.backgroundMainColor,
        body: SafeArea(
          child: Stack(
            children: [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("LOGO"),
                const Spacer(),
                const Align(
                  alignment: Alignment.center,
                  child: UserDataWidget(radius: 40,)),
                  const Divider(),
                  const SizedBox(height: 40,),
                ...MenuItems.all.map(buildMenuItem).toList(),
                const Spacer(flex: 1,),
              ],
            ),
            const Positioned
            (
              left: -20,
              top: -40,
              child: CustomBubble(radius: 150,opacity: 0.1,)),
            const Positioned
            (
              left: 0,
              top: 100,
              child: CustomBubble(radius: 50,opacity: 0.3,)),
            const Positioned
            (
              left: -150,
              bottom: -150,
              child: CustomBubble(radius: 250,opacity: 0.3,)),
            const Positioned
            (
              left: 100,
              bottom: 20,
              child: CustomBubble(radius: 30,opacity: 0.6,)),
            ]
          )),
      ),
    );
  }

  Widget buildMenuItem(CustomMenuItem item)=> ListTileTheme(
    selectedColor: Colors.white,
    child: ListTile(
      selectedTileColor: Colors.black12,
      selected:  currentItem == item,
      minLeadingWidth: 20,
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: () => onSelectedItem(item)
    ),
  );
}
