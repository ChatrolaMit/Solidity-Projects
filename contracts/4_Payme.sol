// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


// interface AggregatorV3Interface {
//   function decimals() external view returns (uint8);

//   function description() external view returns (string memory);

//   function version() external view returns (uint256);

//   function getRoundData(uint80 _roundId)
//     external
//     view
//     returns (
//       uint80 roundId,
//       int256 answer,
//       uint256 startedAt,
//       uint256 updatedAt,
//       uint80 answeredInRound
//     );

//   function latestRoundData()
//     external
//     view
//     returns (
//       uint80 roundId,
//       int256 answer,
//       uint256 startedAt,
//       uint256 updatedAt,
//       uint80 answeredInRound
//     );
// }

contract FundMe {

    mapping(address=> uint256) public addresstoamountfunded;
    uint256 public ver ;
    function  fund() public payable{

        addresstoamountfunded[msg.sender] += msg.value;
        // funded = addresstoamountfunded[msg.sender];
    }

    function getVersion() public view returns (uint256){
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0x1cF3Aa9DBF4880d797945726B94B9d29164211BE);
        // ver = uint256(pricefeed.version());
        return uint256(pricefeed.version());

        // AggregatorV3Interface pricefeed = AggregatorV3Interface()
    }

    function getPrice() public view returns(uint256){
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0x1cF3Aa9DBF4880d797945726B94B9d29164211BE);
        (,int256 answer,,,) = pricefeed.latestRoundData();
        return uint256(answer);
    }
}