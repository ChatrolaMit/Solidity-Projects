// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract functions{

    string public str = "gaurav";

    function checkstr(string memory hello) public pure returns(string memory) {
        // string name = "vefe"; // will give an error b'coz it will store in strage and create conflict b'coz everything inside function stored in memory 
        string memory name = hello;
        return name;
    }

}