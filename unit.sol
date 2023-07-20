// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract Unit {
    //1이더 == 10^18wei
    //100000000000000000wei == 1 ether

    uint public oneWei = 1 wei;
    bool public isOneWei = 1 wei == 1;
    uint public oneEther = 1 ether;
    bool public isOneEther = 1 ether == 1e18;

}
