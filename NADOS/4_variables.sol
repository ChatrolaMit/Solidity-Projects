// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract vari{
    // variables
    // --------------
    // state ->inside contract but outside of function
    // local ->
    // global ->
    

    // 1 . STATE variables

    uint public salary;
    // salary = 100 ;  -->gives an error
    constructor(){
        salary = 1000;
    }
    function setSalary() public {
        salary = 2000;
    }

    // 2 . LOCAL variables

    uint public age ;
    bool public b ; 
    address public newAdd ;

    function fun(uint _x , bool _y , address _z) public returns (uint , bool){
        uint i = 2 ;
        bool b1 = true;

        i+=29 ;
        b1 = false ;

        age = _x ;
        b = _y ;
        newAdd = _z ;

        return (i , b1);
    }

    // 3 . GLOBAL VARIABLE 

    address public myadd = msg.sender ;
    uint public time = block.timestamp ;
    uint public diff = block.difficulty ;
    uint public gascost = tx.gasprice;
    

}
