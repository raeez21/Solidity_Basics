//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract Wallet{
    PaymentSC public payment;
    function payContract() public payable{
        payment = new PaymentSC(msg.sender,msg.value);
    }
}
contract PaymentSC{
    address public from;
    uint public amount;
    constructor(address _from, uint _amount){
        from=_from;
        amount=_amount;
    }
}

contract Wallet2{
    struct PaymentStruct{
        address from;
        uint amount;
    }
    PaymentStruct public payment;
    function payContract() public payable {
        payment = PaymentStruct(msg.sender, msg.value);
    }
}