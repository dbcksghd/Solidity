// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

contract Struct {

    struct Book {
        string title;
        string author;
    }

    mapping(address => mapping(uint => Book)) public myBooks;


    function addBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }

    struct Todo {
        string text;
        bool completed;
    }


}
