// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./simplestorage.sol";

contract ExtraStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override{
        favoruiteNumber = _favoriteNumber + 5;
    }
}
