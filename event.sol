// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Event {
    // 이벤트(event) => dapp에서 활용
    // 블록체인에 기록을 남기는 것 -> 비용이 조금 저렴
    // indexed 파라미터 3개까지

    //이벤트 정의
    //중요한 액션같은 경우는 event를 남긴다.
    event Log(address indexed sender, string message);
    event AnotherLog();

    //함수에서 구현
    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello Solidity!");
        emit AnotherLog();
    }

}
