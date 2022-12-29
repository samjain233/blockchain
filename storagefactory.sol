// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./simplestorage.sol";

contract StorageFactory {
    SimpleStorage[] public simplestoragearray;
    function createSimpleStorageContract() public {
        SimpleStorage simplestorage = new SimpleStorage();
        simplestoragearray.push(simplestorage);
    }

    function sfStore(uint256 _simpleStorageIndex , uint256 _simpleStorageNumber) public {
        //address
        //abi - application binary Interface
        SimpleStorage simplestorage = simplestoragearray[_simpleStorageIndex];
        simplestorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256)
    {
        SimpleStorage simplestorage = simplestoragearray[_simpleStorageIndex];
        return simplestorage.retrieve();
    }
}
