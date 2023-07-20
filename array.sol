// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

import "./struct.sol";

contract Array {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[10] public myFixedArray;

    function get(uint _i) public view returns (uint) {
        return arr[i];
    }

    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint _i) public {
        arr.push(_i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint _index) public {
        delete arr[_index];
    }

    Todo[] public todos; //구조체 배열

    function create(string calldata _text) public {
        todos.push(Todo(_text, false));
        //todos.push(Todo({text: _text, completed: false}));  이렇게도 push할 수 있음

        // 값을 정의해서 넣기
        //Todo memory todo;
        //todo.text = _text;
        //todo.completed = false;
        //todos.push(todo);
    }

    function get(uint _index) public view returns (string memory text, bool completed) {
        //storage == 상태변수를 가져옴
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function update(uint _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

}
