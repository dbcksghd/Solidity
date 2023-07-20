// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Constructor {
    //생성자

    string public name;
    constructor (string memory _name) {
        name = _name;
    }
}
