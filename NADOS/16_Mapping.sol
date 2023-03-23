// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract loops{

    mapping(uint=>string) public emp_id;

    function setid() public{
        emp_id[54]="ftgt";
        emp_id[56]="ftjjggggt";
        emp_id[23]="gvvk";

    }


    function getid(uint _id) public view returns(string memory){
        return emp_id[_id];
    }

    
    
}