// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// contract Counter{
//     // 1. 상태변수 ( 블록체인에 기록되는 데이터)
//     uint private count;

//     // 2. 함수
//     function getCount() public view returns(uint){
//         return count;
//     }

//     function incrementCount() public {
//         count++;
//     }
// }


contract Counter {
    uint public count;

    function incrementCount() public {
        count++;
    }
}
