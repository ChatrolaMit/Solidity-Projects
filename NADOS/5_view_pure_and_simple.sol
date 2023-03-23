// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract vari{

    // view --> only read , no write
    // pure --> no read , no write
    // simple -->  can write

    uint public age = 20 ;

    function viewfun() public view returns(uint){
        return age;
    }

    function purefun() public pure returns (uint){
        return 1;
    }

    function purefun2(uint _x) public pure returns (uint){
        return _x;
    }

    function simfun() public  {
        age+=10;
    }

    

}