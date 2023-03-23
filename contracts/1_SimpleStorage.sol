// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16 <0.9.0; 
contract SimpleStorage {

    // uint256 public favoriteNumber ;
    // int a ;
    // uint256 b =5 ;
    // bool c = true;
    // string s = "String frgg";
    // address d = 0xaA7a2Fb3e2Ada11b5e515BDd6Bd0500c2B95220A;
    // bytes32 e =  "cat";

    // external
    // public
    // internal
    // private 
    // function store(uint256 _favoriteNumber) public{
    //     favoriteNumber = _favoriteNumber;
    // }

    //no need to pay gas fee 
    // view
    // pure

    // function retrive() public view returns(uint256) {
    //     return favoriteNumber;
    // }

    // function retrive(uint256 favoriteNumber) public pure {
    //     favoriteNumber;
    // }

    struct People {
        uint256 favnum ;
        string name ;
    }

    // People public person = People({
    //     favnum : 2 ,
    //     name :"mit"
    // }) ;

    People [] public person ;
    mapping(string =>uint256) public name_to_fav_no ;

    // memory  ==>  when function execute 
    // storage ==>  when execution over still data
    function addperson (string memory _name , uint256 _favnum  ) public{
        person.push(People(_favnum , _name));
        name_to_fav_no[_name] = _favnum;
    }

    // function store1(uint256 _favoriteNumber) external{
    //     storedData = _favoriteNumber;
    // }

    // function store2(uint256 _favoriteNumber) internal{
    //     storedData = _favoriteNumber;
    // }

    // function set(uint x) public{
    //     storedData = x ;
    // }

    // function get() public view returns (uint) {
    //     return storedData;
    // }



}