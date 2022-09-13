import 'package:flutter/material.dart';

class listTileWallet extends StatelessWidget {
  const listTileWallet({
    Key? key,
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailing,
  }) : super(key: key);

  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: title,
      subtitle: subtitle,
      leading: leading,
      trailing: trailing,
    );
  }
}
