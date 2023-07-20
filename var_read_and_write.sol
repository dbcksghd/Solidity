// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract VarReadAndWrite { //상태변수 읽고 쓰기

    uint public num; //상태변수

    function set(uint _num) public {
        num = _num; //상태변수를 update함 : 블록체인에 기록하느라 가스 소모
    }

    function get() public view returns (uint){
        return num; // 상태변수를 read함 :  view를 붙이면 가스비 없이 읽기 ㄱㄴ
    }
}
