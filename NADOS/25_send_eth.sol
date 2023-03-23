// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract a{
    // send , transfer , call

    // send  
    // -->return true and false
    // limit of gas upto -->2300 gas
    // othervize gives error 
    // updates not revert
    // use all gas and not revertable
    // always use send with re quired

    //  transfer 
    // revert all changes
    // limit upto 2300
    
    // call
    // gas limit by user
    // 2 thing return --> 1> bool 2> data in byte
    
    // address payable public  getter = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);

    receive() external payable {

    }

    function checkbal() public view returns(uint){
        return address(this).balance;
    }

    function SEND(address payable getter) public payable{
        bool sent  = getter.send(msg.value);
        require(sent , "transaction is failed");
        
    }

    function TRANSFER(address payable getter) public payable {
        getter.transfer(msg.value);
        // require(sent , "transaction is failed");
    }

    function CALL(address payable getter) public payable {
        (bool sent , )=getter.call{value:msg.value}("");
        require(sent , "transfer is");
    }






}