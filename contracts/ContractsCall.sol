//SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract cOne{
    mapping (address=>uint) public addressBalances;
    function deposit() public payable {
        addressBalances[msg.sender] += msg.value;
    }
    receive() external payable { 
        deposit();
    }
}

contract cTwo{
    receive() external payable { }
    function depositOnContractOne(address _contractOne) public{
        //Calls the C1 deposit func with extra gas and value, this works only if receiving contract is a contract and receiving contract has this fucntion
        // cOne One = cOne(_contractOne);
        // One.deposit{value:10, gas: 100000}();

        // Below two lines uses low level call function
        // bytes memory payload = abi.encodeWithSignature("deposit()");
        // (bool success,) = _contractOne.call{value:10, gas: 100000}(payload);
        
        //Without payload, if we dont know func signature. This needs SC1 to have a require func which calls deposit()
        (bool success,) = _contractOne.call{value:10, gas: 100000}("");
        require(success);

    }
}