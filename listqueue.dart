class ListQueue {
  final List<int> _data = [];

  bool get isEmpty => _data.isEmpty;

  void enqueue(int value) {
    _data.add(value);
  }

  int? dequeue() {
    if (isEmpty) return null;
    return _data.removeAt(0); 
  }
}
