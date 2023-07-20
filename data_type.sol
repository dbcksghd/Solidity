
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract DataType {
    //uint256 = 0 ~ 2^256 - 1
    //uint8 = 0 ~ 2 ^ 8 - 1
    uint8 public u8 = 1;
    uint public u256 = 1;

    //int8 = -2^8 ~ 2^8 - 1
    int8 public i8 = - 1;
    int public  i256 = 23434353215234;
    int public i = - 123124;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    //address type
    //20바이트짜리 자료형
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //bytes type
    bytes1 a = 0x5b; // 10110101
    bytes1 b = 0x56; // 01010110

    //bool type
    bool public isWhat = false;

    //default type
    bool public defaultBool; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x000...0 (20바이트)
}
