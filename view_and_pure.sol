// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ViewAndPure {
    uint public x = 1;

    //상태변수를 사용하되, 건들지 않을 때 뷰를 사용함
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    //상태변수를 사용하지도 않을 때 퓨어를 사용함
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}
