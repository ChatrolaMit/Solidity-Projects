// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract hashfun{

    function  hashkeccak256(uint _x , string memory name  , address _add) public pure returns(bytes32){

        return keccak256(abi.encodePacked(_x , name , _add));

    }

    function  hashsha256(uint _x , string memory name  , address _add) public pure returns(bytes32){
     
        return sha256(abi.encodePacked(_x , name , _add));   
    }

    function  hashripemd160(uint _x , string memory name  , address _add) public pure returns(bytes32){
        
        return ripemd160(abi.encodePacked(_x , name , _add));
    }

}