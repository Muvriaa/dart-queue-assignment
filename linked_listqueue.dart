import 'linked_list.dart'; 

class LinkedListQueue {
  final LinkedList _list = LinkedList();

  bool get isEmpty => _list.isEmpty;

  void enqueue(int value) {
    _list.addLast(value);
  }

  int? dequeue() {
    if (isEmpty) return null;
    try {
      return _list.removeFirst();
    } catch (e) {
      return null;
    }
  }
}
