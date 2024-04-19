//SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract Sender{
    receive() external payable {}
    function withdrawTransfer(address payable _to) public {
        _to.transfer(10);
    }
    function withdrawSend(address payable _to) public{
        bool isSent = _to.send(10);
        require(isSent, "Unsuccess");
    }
    function balance() public view returns(uint){
        return address(this).balance;
    }

}
contract ReceiverNoAction{
    function balance() public view returns(uint){
        return address(this).balance;
    }
    receive() external payable { }
}
contract ReceiverAction{
    uint public balanceReceived;
    receive() external payable {
        balanceReceived += msg.value;//Writing to storage variable costs gas, so it eats up gas before transfer to this SC, so call fails
     }
     function balance() public view returns(uint){
        return address(this).balance;
    }
}