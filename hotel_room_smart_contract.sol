// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract HotelRoomSmartContract is ERC20{
    // 1. 호텔 룸에 대한 정보
    // 2. 호텔 가격 지불에 대한 정보
    // 3. 게스트와 호스트의 주소
    // 4. 호텔룸 주인에 대한 정보
    // 5. 호텔 방 예약 여부에 대한 정보
    // 6. 룸을 예약한 사람에게 호텔룸에서 만든 ERC20 토큰을 인센티브로 주는 프로그램 만들기

    //상태변수 정의하기
    address payable public owner;
    uint private roomLength;
    uint private amount;
    //  이벤트 정의하기
    event Occupy(address _occupant, uint value);
    //생성자
    constructor() {
        owner = payable(msg.sender);
    }

    //수정자
    modifier CostsCheck(uint _amount) {
        require(msg.value >= _amount, "ether error");
        _;
    }

    modifier roomCheck(){
        require(roomLength < 5, "length error");
        _;
    }

    modifier ownerCheck(address _addr) {
        require(_addr == owner, "no authorization");
        _;
    }

    receive() external payable CostsCheck(3 ether) roomCheck {
        roomLength++;
        amount += msg.value;
        _mint(msg.sender, 2 * 10 ** uint(decimals()));
    }

    function collectMoney() external ownerCheck(msg.sender) {
        (bool success,) = owner.call{value: amount}("");
        require(success, "failed to send ether");
    }
}
