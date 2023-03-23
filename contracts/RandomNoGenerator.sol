// SPDX-Licence-Identifier : MIT 

pragma solidity ^0.6.6 ;
pragma experimental ABIEncoderV2;

contract Land{

    // farmers and its lands 
    struct Land{
        uint256  UPIN ;
        string  landTitle ;
        uint64  SurvayNo;
        string  area ;
        string  landUse ;
    }
    Land[] public farmer; 
    mapping(uint256 => Land) public upin_to_land;

    // string[] public Farmers_arr ;
    mapping(string => uint256[] ) public Farmers_map;


    struct Set {
        string[] values;
        mapping (string => bool) is_in;
    }

    Set Farmers_arr;

    function farmers_arr_add(string memory a) public {
        if (!Farmers_arr.is_in[a]) {
            Farmers_arr.values.push(a);
            Farmers_arr.is_in[a] = true;
        }
    }


    function add_land( string memory _fid,uint256  _UPIN ,string memory _landTitle ,uint64  _SurvayNo ,string memory _area ,string memory _landUse  ) public {
        Land memory land = Land(_UPIN , _landTitle , _SurvayNo , _area , _landUse);
        farmer.push(land);
        upin_to_land[_UPIN] = land ;
        if( bool(Farmers_map[_fid].length>= 0 )){
            // uint256[] memory arr =  uint256();
            // arr.push()
            farmers_arr_add(_fid);
            Farmers_map[_fid].push(_UPIN);
        }
    }

    function getFarmersLand(string memory _fid) public returns(uint256[] memory){
        return Farmers_map[_fid];
    }

    function getFarmersLands(string memory _fid , uint256 _UPIN) public returns(Land memory ){
        return upin_to_land[_UPIN];
    }

    function sell_land(string memory _buyer_fid , string memory _seller_fid ,  uint256 _UPIN) public {
        for(uint i = 0 ; i<Farmers_map[_seller_fid].length ; i++){
            if(Farmers_map[_seller_fid][i]==_UPIN){
                Farmers_map[_seller_fid][i] = uint256(0);
            }
        }
        add_land(_buyer_fid ,farmer[_UPIN].UPIN , farmer[_UPIN].landTitle , farmer[_UPIN].SurvayNo ,farmer[_UPIN].area ,farmer[_UPIN].landUse );
    }

    function getAllFarmers() public view returns(string[] memory ){
        return Farmers_arr.values;
    }

    // function getSt() public view returns (string[] memory) {
    //     return st;
    // }

}