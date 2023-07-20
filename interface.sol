// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface Interface {
    function count() external view returns (uint);

    function increment() external;
}

contract Counter {
    uint public count;

    function increment() external {
        count++;
    }
}

contract myContract {

    function incrementCounter(address _counter) external {
        Interface(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint) {
        return Interface(_counter).count();
    }
}
