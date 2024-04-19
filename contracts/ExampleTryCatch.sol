//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract WillThrow{
    error NotAllowed(string);
    function aFunction() public pure{
        // require(false, "Error message");
        // assert(false);
        revert NotAllowed("Not allowed by you");
    }
}
contract ErrorHandling{
    event ErrorLogging(string reason);
    event ErrorLogCode(uint code);
    event ErrorLogBytes(bytes lowlevelData);
    function catchError() public{
        WillThrow will = new WillThrow();
        try will.aFunction(){
            //add code if it works
        }catch Error(string memory reason){ //for require
            emit ErrorLogging(reason);
        }catch Panic(uint ErrorCode) { //for assert
            emit ErrorLogCode(ErrorCode);
        }catch(bytes memory lowlevelData){ //for custom errors
            emit ErrorLogBytes(lowlevelData);
        }

    }
}