// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Function {

    function multiReturn() public pure returns (uint, bool, uint){
        return (1, true, 2);
    }

    function named() public pure returns (uint x, bool b, uint y){
        return (1, true, 2);
    }

    //할당했기 때문에 return 없어도 됨
    function assigned() public pure returns (uint x, bool b, uint y) {
        x = 1;
        b = true;
        y = 2;
    }

    //구조분해할당
    function destructuringAssignment() public pure returns (uint, bool, uint, uint, uint) {
        (uint i, bool b, uint j) = multiReturn();
        (uint x, uint y) = (4, 5, 6);
        return (i, b, j, x, y);
    }

    //컨트랙트 안에서만 호출 가능
    function privateFunc() private pure returns (string memory) {
        return "Private function called";
    }

    //아무곳에서나 호출 가능
    function publicFunc() public pure returns (string memory) {
        return privateFunc();
    }

    //컨트랙트 안 또는 이 컨트랙트를 상속받은 경우 호출 가능
    function internalFunc() internal pure returns (string memory) {
        return "internal function called";
    }

    //다른 컨트랙트나 계정에서 호출 가능
    function ExternalFunc() external pure returns (string memory) {
        return "external function called";
    }
}
