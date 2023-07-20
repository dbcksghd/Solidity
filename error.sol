// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Error {

    function textRequire(uint _i) public pure {
        uint num;
        //require
        //검증 함수, require에서 거짓이면 실행을 종료함
        require(_i > 10, "10보다 작은 숫자를 입력해주세요");

        //revert
        if (i <= 10) {
            revert("10보다 더 작은 숫자를 입력해주세요");
        }

        //assert
        //테스트용으로 씀. 실제 코드에는 안들어감
        assert(num == 0);
    }

}
