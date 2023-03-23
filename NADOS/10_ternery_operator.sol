// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract vari{
    
    function fun(uint _x) public pure returns(string memory){

        string memory val;
        val = _x >100 ? "greter" : "equal or smaller";
        
        return val;

    }

}