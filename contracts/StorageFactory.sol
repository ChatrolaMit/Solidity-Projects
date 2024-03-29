// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

abstract contract SimpleFactory is SimpleStorage {

    SimpleStorage[] public simpleStorageArray ;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage(6);
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex , uint256 _simpleStorageNumber) public {
        SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrive();

    }

    

}