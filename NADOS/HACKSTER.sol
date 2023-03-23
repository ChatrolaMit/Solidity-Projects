//SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract SimpleStorage {
    struct farmDetails {
        uint UPIN;
        uint oldSurvey;
        uint newSurvey;
        uint totalAss;
        string owner;
        string district;
        string taluka;
        string village;
        string totalArea;
        string landUse;
    }
    mapping(string => farmDetails) public farmerToFarm;
    constructor(string memory farmID){
        farmDetails storage c = farmerToFarm[farmID];
    }






event bal(farmDetails a);

    

// function createFarmerId(string memory farmerId) public {
//     farmerToFarm[farmerId] = farmDetails[];
// }
  function store(string memory farmID,uint UPIN,
    uint oldSurvey,
    uint newSurvey,
    uint totalAss,
    string memory owner,
    string memory district,
    string memory taluka,
    string memory village,
    string memory totalArea,
    string memory landUse) public {
        
        
        c.UPIN=UPIN;
    c.oldSurvey=oldSurvey;
    c.newSurvey=newSurvey;
    c.totalAss=totalAss;
    c.owner=owner;
    c.district=district;
    c.taluka=taluka;
    c.village=village;
    c.totalArea=totalArea;
    c.landUse=landUse;

  }

  function retrieve(string memory farmerId) public  returns (farmDetails memory) {
      farmDetails storage a = farmerToFarm[farmerId];
      emit bal(a);
    return a;
  }
}