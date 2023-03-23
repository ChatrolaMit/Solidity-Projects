// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

struct doner_dts{
    string name ;
    uint age ;
    string add ;
    uint don ;
}

contract loops{

    mapping(address=>doner_dts) public acc;
    function set(string memory _name , uint _age , string memory _add , uint _don ) public {

        acc[msg.sender] = doner_dts(_name,  _age , _add ,acc[msg.sender].don+_don);


    }

    function delete_info () public{
        delete acc[msg.sender];
    }

}