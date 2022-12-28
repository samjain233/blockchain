//using the solidity version 0.8.7
//defining solidity version
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    //boolean , uint(unsigned integer) , int , address , bytes
    // uint256 favoruiteNumber = 123;
    // int32 AnotherfavNum = -3;
    // string numberInText = "three";
    // address myaddress = 0x89a75E52eC29788A80fe46266Cc3AA6bbC7A4837;
    // bytes favoruiteNumber = "cat";

    uint256 public favoruiteNumber ;
    //This gets initialized to zero !

    //creating a structure in solidity
    struct People {
        uint256 favNum;
        string name;
    }

    People public person = People({favNum:245,name:"sambhav"});

    //creating arrays
    // uint256[] public favnum;
    People[] public people;

    mapping(string => uint256) public nametofavnum;

    function store(uint256 _favoruiteNumber) public {
        favoruiteNumber = _favoruiteNumber;
    }

    //view , pure takes 0 gas
    function retrieve() public view returns(uint256){
        return favoruiteNumber;
    }

    function addPerson (string memory _name , uint256 _favoruiteNumber) public{
        people.push(People(_favoruiteNumber,_name));
        nametofavnum[_name] = _favoruiteNumber;
    }
}
