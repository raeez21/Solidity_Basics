//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleMapWithdrawals{
    mapping(address=>uint) public balanceReceived;
    function sendMoney() public payable{
        balanceReceived[msg.sender] += msg.value;
    }
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    function withdrawAllMoney(address payable _to) public{
        uint balanceToSend = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0;
        _to.transfer(balanceToSend);
    }
}