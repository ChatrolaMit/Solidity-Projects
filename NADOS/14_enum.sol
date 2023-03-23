// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract loops{

    enum status {
        pen ,shipped , accepted , rejected,cancel
    }
    status public st ;

    function getstatus () public view returns(status){
        return st;
    }

    function setstatus(status _st) public{
        st = _st;
    } 

    function rej () public{
        st = status.rejected;

    }

    function reset() public {
        delete st;
    }
}