function fun1() public virtual {
        emit log("A.fun1" , 21);
    }
    function fun2() public virtual {
        emit log("A.fun2" , 21);
    }
    function fun () public pure returns(string memory){
        return "i am in a";
    }

    function fun2() public pure returns(string memory){
        return "i am in a";
    }
    function fun3() public pure virtual returns(string memory){
        return "i am in a";
    }
    function fun4() public pure virtual returns(string memory){
        return "i am in a";
    }
}

contract b is a {

    function fun3() public pure override returns(string memory){
        return "i am in b";
    } 
    function fun4() public pure virtual override returns(string memory){
        return "i am in b";
    } 
}

contract c is b {
    function fun4() public pure override returns(string memory){
        return "i am in c";
    }

}