//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract FallbackFunc{
    uint public lastValueSent;
    string public lastFuncCalled;

    uint public myUint;

    function setMyUint(uint _myNewUint) public{
        myUint = _myNewUint;
    }
    // 0xe492fd840000000000000000000000000000000000000000000000000000000000000001
    // 0xe492fd840000000000000000000000000000000000000000000000000000000000000001
    receive() external payable { 
        lastValueSent = msg.value;
        lastFuncCalled = "receive";
    }
    fallback() external payable {
        lastValueSent = msg.value;
        lastFuncCalled = "fallback";
     }
}