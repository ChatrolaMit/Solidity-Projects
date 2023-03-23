// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract owner {

    address public owner ;

    constructor(){
        owner = msg.sender ; //who deploy the code

    }

    modifier onlyOwner(){
        require(msg.sender == owner , "not owner");
        _;
    }

    function setOwner(address _newOwner) public onlyOwner{
        require(_newOwner != address(0) , "invalid address");
        owner = _newOwner;

    }

    function onlyOwnerCanAccess() public onlyOwner{

    }

    function anyOneCanAccess() public {


    }



}