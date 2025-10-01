import 'linked_listqueue.dart';
import 'listqueue.dart';

void main() {
  print('List-based Queue');
  final listQueue = ListQueue();
  listQueue.enqueue(10);
  listQueue.enqueue(20);
  listQueue.enqueue(30);
  print(listQueue);
  print('Dequeued: ${listQueue.dequeue()}');
  print(listQueue);

  print('\LinkedList-based Queue');
  final linkedListQueue = LinkedListQueue();
  linkedListQueue.enqueue(10);
  linkedListQueue.enqueue(20);
  linkedListQueue.enqueue(30);
  print(linkedListQueue);
  print('Dequeued: ${linkedListQueue.dequeue()}');
  print(linkedListQueue);
}
