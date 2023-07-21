// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
// 1. 발행한 토큰을 추가로 발행 할 수 있는 함수를 추가하고 구현하기
// 2. 특정한 주소로 추가로 발행할 수 있는 함수 구현하기
// 3. owner만 토큰을 발행할 수 있도록 만들기
// 4. Cap. 토큰의 최대 발행량을 제한하기
contract MyToken is ERC20 {
    address private owner;
    uint private immutable cap;
    uint private amount;

    constructor(string memory name, string memory symbol, uint initialSupply, uint _cap) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply * 10 ** uint(decimals()));
        owner = msg.sender;
        cap = _cap;
    }

    //오너 검증 수정자
    modifier onlyOwner() {
        require(owner == msg.sender, "Not owner");
        _;
    }


    //토큰 최대 발행 검증 함수
    modifier maxTokenCap(uint _amount) {
        require(cap > amount + _amount, "Cap error");
        _;
    }

    // 토큰 추가발행하기, 오너만
    function addTokens(uint _amount) public onlyOwner maxTokenCap(_amount) {
        amount += _amount;
        _mint(msg.sender, _amount * 10 ** uint(decimals()));
    }

    //특정 주소로 토큰 발행하기
    function addToSendTokens(uint _amount, address _addr) public {
        _mint(_addr, _amount * 10 ** uint(decimals()));
    }
}
