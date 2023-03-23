// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract fundme{
    mapping(address => uint256) public addresstoammountfunded ;
    function fund() public payable {
        addresstoammountfunded[msg.sender] += msg.value;
        // return 
    }
// 0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e
    function getversion() public view returns (uint256) {
        // 0xECe365B379E1dD183B20fc5f022230C044d51404
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        return pricefeed.version(); 
    }
}

