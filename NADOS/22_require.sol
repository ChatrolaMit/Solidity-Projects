// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract a{

    address public owner = msg.sender ;
    uint public age = 25 ;

    function CheckRequire(uint _x) public {
        age+=5 ;
        require(_x>2  , "value of x is lessthen 2");
        // age = 10;
    }

    function ownerRequire() public {
        age+=11;
        require(owner==msg.sender);
        
    }

}
