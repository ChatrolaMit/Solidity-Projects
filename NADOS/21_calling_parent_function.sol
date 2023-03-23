// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract a{

    event log(string name , uint age );

    function fun1() public virtual {
        emit log("A.fun1" , 21);
        
    }
    function fun2() public virtual {
        emit log("A.fun2" , 21);
    }
}

contract b is a{

    function fun1() public virtual override {
        emit log("B.fun1" , 31);
        a.fun1();// direct calling 
    }
    function fun2() public virtual override{
        emit log("B.fun2" , 31);
        super.fun2();//
    }

}

contract c is a{

    function fun1() public virtual override{
        emit log("C.fun1" , 41);
    }
    function fun2() public virtual override {
        emit log("C.fun2" , 41);
    }

}

contract d is b,c{

    function fun1() public override(b,c) {
        emit log("D.fun1" , 51);
        b.fun1();
    }
    function fun2() public override(b,c) {
        emit log("D.fun2" , 51);
        super.fun2();
    }

}