// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract if_else{

    function fun(uint _x) public pure returns (string memory){

        string memory val ;

        if(_x > 100 ){
            val = "greter than 100";
        }
        else if(_x<100){
            val = "smaller then 100";
        }
        else{
            val = "equal to 100";
        }

        return val;

    }

}