// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract loops{

    function loop() public pure {
        uint count = 0 ;

        for(uint i = 0 ; i<10 ; i++){
            count+=5;
        } 
        

    }

}