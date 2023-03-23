// SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/utils/math/SignedSafeMath.sol";
// import "chainlink/contracts/src/v0.6/vendor/SafeMathChainlink.sol";
contract fund_me{

    using SignedSafeMath for uint256 ;  
    address public owner ;
    mapping (address=>uint256) public addressToAmountFunded ;
    address [] public funders ;

    constructor() {
        owner = msg.sender;

    }
    function fund() public payable {
        // $2 
        uint256 minimumUSD = 2 * 10 ** 17 ;
        require(getconversion(msg.value) >= minimumUSD , "you need to spend more eth");
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);

    }

    function getVersion() public view returns(uint256){
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
        return pricefeed.version();
    }

    function getPrice() public view returns (uint256){
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
        (,int256 answer,,,) =pricefeed.latestRoundData();
        return uint256(answer*10000000000);
    }

    function getconversion (uint256 ethAmount) public view returns(uint256){
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUSD = (ethPrice * ethAmount)/1000000000000000000;
        return ethAmountInUSD;
    }
    
    modifier onlyOwner{
        require(msg.sender == owner , "you are not owner");
        _;
    }
    function Withdraw() payable onlyOwner public {
        // require(msg.sender == owner);
        payable(msg.sender).transfer(address(this).balance);
        for(uint i = 0 ; i< funders.length ; i++){
            address funder = funders[i];
            addressToAmountFunded[funder] = 0;
        }
        funders = new address[](0);
    }
} 