// SPDX-Licence-Identifier : MIT 

pragma solidity ^0.6.6 ;

contract LandRecord{
    uint256 public UPIN ;
    uint64 public newSurvayNo ;
    string public district ;
    string public taluka ;
    string public village ;
    string public landTitle ;
    uint64 public oldSurvayNo;
    string public area ;
    string public totalAssesment ;
    string public landUse ;
    string public tenure ;

    constructor(uint256 _UPIN,uint64 _newSurvayNo , string memory _district,string memory _taluka ,string memory _village,string memory _landTitle ,uint64 _oldSurvayNo,string memory _area ,string memory _totalAssesment ,string memory _landUse,string memory _tenure ) public {
        UPIN = _UPIN;
        newSurvayNo = _newSurvayNo;
        district = _district;
        taluka = _taluka;
        village = _village ;
        landTitle = _landTitle ;
        oldSurvayNo = _oldSurvayNo ;
        area = _area ;
        totalAssesment = _totalAssesment;
        landUse = _landUse ;
        tenure = _tenure;
    }

    function updateLand(uint256 _UPIN,uint64 _newSurvayNo , string memory _district,string memory _taluka ,string memory _village,string memory _landTitle ,uint64 _oldSurvayNo,string memory _area ,string memory _totalAssesment ,string memory _landUse,string memory _tenure ) public {
        UPIN = _UPIN;
        newSurvayNo = _newSurvayNo;
        district = _district;
        taluka = _taluka;
        village = _village ;
        landTitle = _landTitle ;
        oldSurvayNo = _oldSurvayNo ;
        area = _area ;
        totalAssesment = _totalAssesment;
        landUse = _landUse ;
        tenure = _tenure;
    }





    

}