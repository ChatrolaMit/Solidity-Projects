// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract Lottery{

    address public manager;
    address payable[] public players ;

    constructor(){
        manager = msg.sender;
    }

    function alreadyEntered() view private returns(bool){
        for(uint i = 0 ; i<players.length ; i++){
            if(players[i] == msg.sender){
                return true;
            }
            
        }
        return false ;


    }

    function enter() payable public{
        require(msg.sender != manager , "Manager can not Enter");
        require(alreadyEntered() == false , "Player already entered");
        require(msg.value >= 1 ether , "minimum amount must be payed");
        players.push(payable(msg.sender));
    } 

    

}