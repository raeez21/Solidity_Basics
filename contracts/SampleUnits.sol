//SPDX-License-Identifier: MIT

pragma solidity ^0.8.16;

contract SampleUnit{
    modifier betweenOneAndTwoEth(){
        //Uses the 'ether' keyword
        require( msg.value >= 1 ether  && msg.value <=2 ether );
        _;
    }
    uint runUntilTimestamp;
    uint startTimeStamp;

    constructor(uint startInDays){
        //Using the 'days' time unit keyword 
        startTimeStamp = block.timestamp + (startInDays * 1 days);
        runUntilTimestamp = startTimeStamp + (7 days);
    }

}