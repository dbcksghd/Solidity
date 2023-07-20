// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract Mapping {
    // 맵핑
    // key type -> value type
    // 반복 안됨

    mapping(address => uint) public myMap;

    //key, value 추가
    function setMyMap(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    //value 가져오기
    function getMyMap(address _addr) public view returns (uint) {
        return myMap[_addr];
    }

    //key, value 삭제
    function removeMyMap(address _addr) public {
        delete myMap[_addr];
    }

    //2차원 맵핑
    mapping(address => mapping(uint => bool)) public nested;

    function getNested(address _addr, uint _i) public view returns (bool) {
        return nested[_addr1][_i];
    }

    function setNested(address _addr, uint _i, bool _b) public {
        nested[_addr][_i] = _b;
    }

    function removeNested(address _addr, uint _i) public {
        delete nested[_addr][_i];
    }


}
