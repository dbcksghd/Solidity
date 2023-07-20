// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract Inherit {
    //다중 상속 지원
    //is 키워드를 사용해서 상속받음
    //오버라이딩 가능

    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

contract X {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;
    constructor(string memory _text){
        text = _text;
    }
}

// 상속
contract Z is X("유찬홍"), Y("장지성") {}

contract A is X, Y, Inherit {
    //super 느낌
    constructor(string memory _name, string memory _text) X(_name) Y(_text){}

    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}
