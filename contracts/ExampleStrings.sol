//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleString{
    string public myString = "100 ETH";
    bytes public myBytes = "hello world";

    function setMyString(string memory _myString) public{
        myString = _myString;

    }
     function getBytesLength() public view returns (uint) {
        return myBytes.length;
    }
    function compare(string memory _myString) public view returns(bool){
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_myString));
    }
    
}