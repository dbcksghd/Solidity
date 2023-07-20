// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Payable {
    //지불
    address payable public owner;
    constructor() payable{
        owner = payable(msg.sender);
    }

    function deposit() public payable {

    }

    //오너한테 돈 다 넘겨주기
    function withdraw() public {
        uint amount = address(this).balance;
        (bool success,) = owner.call{value: amount}("");
        require(success, "failed to send ether");
    }

    function transfer(address payable _to, uint _amount) public {
        (bool success,) = _to.call{value: _amount}("");
        require(success, "failed to send ether");
    }

    function NotPayableDeposit() public {

    }
}
