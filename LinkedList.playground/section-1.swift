import UIKit

var str = "Hello, Linkedlist"

class Node {
    var data :Int32 = 0
    var next :Node?
    
    init(_ data:Int32 , _ next:Node?) {
        self.data = data
        self.next = next
    }
}

// Display ASCII representation of linkedList
func nodeRep(head:Node) -> Void {
    println("")
    var start = head
    while let node = start.next {
       print("(\(start.data))->")
        start = node
    }
    print("(\(start.data))->*")
}


func reverseLinkedList(head:Node){
    var current:Node = head
    var previousNode:Node?
    var nextNode:Node
    
    while let next = current.next {
        current.next = previousNode
        previousNode = current
        current = next
    }
    current.next = previousNode
}

// Build LinkedList of 4 elements
let four = Node(4 , nil)
let three = Node(3, four)
let two = Node(2, three)
let one = Node(1 , two)


nodeRep(one)
reverseLinkedList(one)
nodeRep(four)