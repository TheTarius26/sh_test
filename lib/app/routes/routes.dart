import 'package:flutter/material.dart';
import 'package:sh_test/app/ui/entry/view/entry_page.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const EntryPage(),
};

const initialRoute = '/';
