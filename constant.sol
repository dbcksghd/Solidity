// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Constant {
    // 상수
    //수정될 수 없는 변수
    // 가스비용 절약 ㄱㄴ - 수정될 필요가 없는 값은 상수로 설정

    address public constant MY_CONST_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    uint public constant MY_CONST_UNIT = 123;

    //불변
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint){
        MY_ADDRESS = msg.sender;
        MY_UNIT = _myUint;
    }
}
