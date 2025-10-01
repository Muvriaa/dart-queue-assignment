class Node {
  Node(this.value, [this.next]);

  int value;
  Node? next;

  @override
  String toString() {
    final result = StringBuffer();
    result.write(value);
    var nextNode = next;
    while (nextNode != null) {
      result.write(' -> ');
      result.write(nextNode.value);
      nextNode = nextNode.next;
    }
    return result.toString();
  }
}

class LinkedList {
  Node? head;
  Node? tail;

  bool get isEmpty => head == null;

  void addLast(int value) {
    final newNode = Node(value);
    if (isEmpty) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode;
      tail = newNode;
    }
  }

  void addFirst(int value) {
    final newNode = Node(value);
    if (isEmpty) {
      head = newNode;
      tail = newNode;
    } else {
      newNode.next = head;
      head = newNode;
    }
  }

  int removeFirst() {
    if (isEmpty) {
      throw Exception(
        'The list is empty. Cannot remove the first element.',
      );
    }
    final value = head!.value; 
    
    if (head == tail) {
      head = null;
      tail = null;
    } else {
      head = head?.next;
    }
    
    return value;
  }

  void removeLast() {
    if (isEmpty) {
      throw Exception("There is nothing you can remove");
    } else if (head == tail) {
      head = null;
      tail = null;
    } else {
      var current = head;
      while (current?.next != tail) {
        current = current?.next;
      }
      current?.next = null;
      tail = current;
    }
  }

  @override
  String toString() {
    if (isEmpty) {
      return 'Empty';
    }
    return head.toString();
  }
}
