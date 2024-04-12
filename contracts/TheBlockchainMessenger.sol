// SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Messenger{
    string public theMessage;
    address public owner;
    uint public counter;
    constructor(){
        owner = msg.sender;
    }
    function updateMessage(string memory _newMessage) public{
        if(msg.sender == owner){
            theMessage = _newMessage;
            counter++;
        }
    }
}