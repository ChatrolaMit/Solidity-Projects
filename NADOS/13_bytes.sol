// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract loops{

    bytes public temp = "abc" ;

    constructor (){
        temp = "2345xc";
    }
    function pushle() public{
        temp.push('c');
    }

    function popele() public{
        temp.pop();
    }

    function getlen() public view returns(uint){
        return temp.length ;
    }

    

}