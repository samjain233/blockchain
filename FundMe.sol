//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe {

    uint256 public minimumUsd = 50;

    function fund() public payable{
        //want to be able to set a minimum USD money to be funded
        require(msg.value >= minimumUsd ,"You dont have enough amount to continue"); 
        //if the function doesn't meet the requirements or it doesn't executes then the prior function will be reverted

    }

    //0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e

    function getPrice() public view returns(uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
        ( , int256 price ,,,)=priceFeed.latestRoundData();
        return uint256(price*1e10);
    }

    function getVersion() public view returns(uint256){
        AggregatorV3Interface price = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
        return price.version();
    }
    
    // function withdraw(){

    // }

}
