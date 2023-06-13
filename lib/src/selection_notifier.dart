import 'package:flutter/foundation.dart';

class SelectionNotifier extends ChangeNotifier {
  late int lastIndex;
  int currentIndex;
  final ValueChanged<int>? onTap;
  final List<int> unAnimatedItems;

  SelectionNotifier(this.currentIndex, this.onTap, this.unAnimatedItems);

  void selectIndex(int index) {
    if (!unAnimatedItems.contains(index)) {
      lastIndex = currentIndex;
      currentIndex = index;
    }
    onTap?.call(index);
    notifyListeners();
  }
}
