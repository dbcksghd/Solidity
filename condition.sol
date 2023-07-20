// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Condition {
    function foo(uint x) public pure returns (uint) {
        //조건문
        if (x < 10) {
            return 0;
        } else {
            return 1;
        }
    }

    function ternary(int _x) public pure returns (int){
        return _x < 10 ? 1 : 0;
    }
}
