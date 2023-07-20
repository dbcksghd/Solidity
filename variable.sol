// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract Variable {
    //변수
    //1. 지역변수 : 함수 안에 선언됨 == 블록체인에 기록이 안됨
    //2. 상태변수 : 함수 밖에 선언됨 == 블록체인에 기록이 됨
    //3. 전역변수 : 블록체인에 관한 정보를 제공함

    //상태변수들
    string public text = "hello";
    uint public num = 123;

    function doSomeThing() public {
        //지역변수들
        uint i = 1;
        string io = unicode"지역변수";

        //전역변수들
        uint timeStamp = block.timestamp; // 현재 블록의 타임스탬프를 가져옴
        address sender = msg.sender; // 호출자의 주소
    }
}
