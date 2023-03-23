// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract Event{

    event balance(address acc , string message ,uint val);
    function setData(uint _val ) public {
        emit balance(msg.sender , "has value " , _val);
    } 


}

contract chatapp {
    event chat(address indexed _from , address _to  , string  _message);
    function sendmess(address to_ , string memory message_ ) public {
        emit chat(msg.sender , to_ , message_);

    }
}