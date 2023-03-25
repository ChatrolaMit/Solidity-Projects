// SPDX-License-Identifier: MIT 

pragma solidity >=0.5.0 <0.9.0;

contract vulnerable{
    mapping(address=>uint)public balances;


    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw() public {
        uint bal = balances[msg.sender];
        require(bal>0 , "Not Enough Ethers");

        (bool sent, ) = (msg.sender).call{value:bal}("");
        require(sent , "Transaction is Failed");

        balances[msg.sender]=0;
    }

}