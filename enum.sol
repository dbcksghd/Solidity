// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Enum {
    enum Status{
        pending, // 0
        shipped, // 1
        accepted,
        rejected,
        canceled
    }
    Status public status;

    function get() public view returns (Status) {
        return status;
    }

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.canceled;
    }

    function reset() public {
        delete status;
    }


}
