// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }
    
    //Fábio task 1
    Todo[] public todos;
    
    //Fábio task 2
    function create(string calldata _text) external {
        todos.push(Todo({
            text: _text, 
            completed: false
            
        }));
    }

    //Fábio task 3
     function updateText(uint _index, string calldata _text) external {
         Todo storage todo = todos[_index];
         todo.text = _text;
     }

    //Fábio task 4
    
    function toggleCompleted(uint _index) external {
         Todo storage todo = todos[_index];
         if (todo.completed) {
            todo.completed = false; 
         } else {
            todo.completed = true; 
         }
    }
    
    //Fábio task 5
    function get(uint _index) external view returns (string memory, bool) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    
    
}
