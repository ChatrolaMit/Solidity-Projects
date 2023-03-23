// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract a{

    event log(string _fun , address _sender , uint _val , bytes _data );

      
    fallback() external payable {
        emit log("fallback" , msg.sender , msg.value , msg.data);
    }

    receive() external payable  {
        emit log("receive" , msg.sender , msg.value , "");
    }

    function checkbal() public view returns(uint){
        return address(this).balance;
    }
}