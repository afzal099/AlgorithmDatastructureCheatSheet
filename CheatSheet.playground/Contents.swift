// Singly Linked list
class Node {
    var data: String?
    var next: Node?
}

// Create node objects
var node1 = Node()
node1.data = "1"

var node2 = Node()
node2.data = "2"

var node3 = Node()
node3.data = "3"

var node4 = Node()
node4.data = "4"

var node5 = Node()
node5.data = "5"

var node6 = Node()
node6.data = "6"

var node7 = Node()
node7.data = "7"

var node8 = Node()
node8.data = "8"

var node9 = Node()
node9.data = "9"

var node10 = Node()
node10.data = "10"

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6
node6.next = node7
node7.next = node8
node8.next = node9
node9.next = node10

/*
Uncomment following line to enable loop in list
Note: Traversing and finding middle of node will loop infinitly if there is a loop in node
 */

//node5.next = node2


var node: Node? = node1

// traveersing a list
print("traveersing a node")
while node != nil {
    print(node?.data ?? "")
    node = node?.next
}

//finding middle of list
print("finding middle of node")
var slow: Node? = node1
var fast: Node? = node1

while fast?.next != nil {
    slow = slow?.next
    fast = fast?.next?.next
}
print(slow?.data ?? "")


//finding loop in list
print("finding loop in node")
var loopSlow: Node? = node1
var loopFast: Node? = node1

while (loopSlow != nil && loopFast != nil && loopFast?.next != nil) {
    loopSlow = loopSlow?.next
    loopFast = loopFast?.next?.next
    if loopSlow?.data == loopFast?.data {
        print("Loop found at \(loopFast?.data ?? "")")
        break
    }
}


//fibinocci
print("fibinocci")
var first = 0
var second = 1
print(first)
print(second)
var i = 0
var sum = 0
while i < 20 {
    sum  = first + second
    print(sum)
    first = second
    second = sum
    i = i + 1
}
