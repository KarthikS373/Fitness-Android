import 'package:cultfit/Widgets/Buttons/clickableTextButton.dart';
import 'package:flutter/material.dart';

class HomescreenAppbar extends StatelessWidget {
  final double scrollOffset;
  const HomescreenAppbar({Key? key, this.scrollOffset = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      child: SafeArea(
        child: Row(
          children: <Widget>[
            const Icon(
                Icons.add,
                color: Colors.white
            ),
            const Spacer(),
            ClickableTextbutton(onTap: () {}, title: "Test"),
            const SizedBox(
              width: 25,
            ),
            ClickableTextbutton(onTap: () {}, title: "Test"),
            const SizedBox(
              width: 25,
            ),
            ClickableTextbutton(onTap: () {}, title: "Test"),
          ],
        ),
      ),
    );
  }
}
