//SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleAddress{
    address public someAdd;
    function setSomeAdd(address _someAdd) public {
        someAdd = _someAdd;
    }
    function getBalance() public view returns(uint){
        return someAdd.balance;
    }
}