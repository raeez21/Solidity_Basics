//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract ExampleMapping{
    mapping (uint => bool) public myMapping;
    mapping(address => bool) public addrMap;
    mapping(uint => mapping(uint => bool)) public nestedMap;
    mapping(string => string) public strMap;
    function setStrMap(string memory _key, string memory _value) public{
        strMap[_key] = _value;
    }
    function setValue(uint _index) public{
        myMapping[_index] = true;
    }
    function setMyAddrToTrue() public{
        addrMap[msg.sender] = true;
    }
    function setNestedMap(uint _key1, uint _key2, bool _val) public{
        nestedMap[_key1][_key2] = _val;
    }
}