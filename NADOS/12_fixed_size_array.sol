// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract array{

    // fixed size array 

    uint[5] public arr = [10 , 20 , 30 , 40 , 50] ;
    uint [] public newArr = new uint[](3);

    // dynamic size array

    uint [] public dyn = [1 ,2 ,3 , 7 , 8 , 9];
    function fun() public {
        //get 

        uint temp = dyn[3];

        // update
        dyn[1] = 234;

        // delete
        delete dyn[2] ;

        dyn.push(23);


    }
}