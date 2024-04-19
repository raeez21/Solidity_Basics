//SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract RequireAssert{
    mapping (address => uint8) public balanceReceived;
    function receiveMoney() public payable{
        assert(msg.value == uint8(msg.value));
        balanceReceived[msg.sender] += uint8(msg.value);
    }
    function withdrawMoney(address payable _to, uint8 _amt) public{
        require(_amt <= balanceReceived[msg.sender], "Not enough funds, aborting!");
        balanceReceived[msg.sender] -= _amt;
        _to.transfer(_amt);
        
    } 
}