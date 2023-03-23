// SPDX-Licence-Identifier : MIT

pragma solidity ^0.6.6;
pragma experimental ABIEncoderV2;

contract Land {
    // farmers and its lands
    address owner = msg.sender;
    struct Land {
        uint256 UPIN;
        string village;
        string taluko;
        string district;
        string survayNo;
        string area;
        string land_type;
        uint256 khata_number;
        uint256 mutation_number;
        string tenure;
        string sub_division;
    }

    Land[] public farmer;
    mapping(uint256 => Land) public upin_to_land;

    // string[] public Farmers_arr ;
    mapping(string => uint256[]) public Farmers_map;

    struct Set {
        string[] values;
        mapping(string => bool) is_in;
    }

    Set Farmers_arr;

    function farmers_arr_add(string memory a) public {
        if (!Farmers_arr.is_in[a]) {
            Farmers_arr.values.push(a);
            Farmers_arr.is_in[a] = true;
        }
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    // function add_land(
    //     string memory _fid,
    //     uint256 _UPIN,
    //     string memory _landTitle,
    //     uint64 _SurvayNo,
    //     string memory _area,
    //     string memory _landUse
    // ) public {
    //     Land memory land = Land(_UPIN, _landTitle, _SurvayNo, _area, _landUse);
    //     farmer.push(land);
    //     upin_to_land[_UPIN] = land;
    //     if (bool(Farmers_map[_fid].length >= 0)) {
    //         uint256[] memory arr =  uint256();
    //         arr.push()
    //         farmers_arr_add(_fid);
    //         Farmers_map[_fid].push(_UPIN);
    //     }
    // }

    function add_land(
        string memory _fid,
        uint256 _UPIN,
        string memory _village,
        string memory _taluko,
        string memory _district,
        string memory _survay_number,
        string memory _area,
        string memory _land_type,
        uint256 _khata_number,
        uint256 _mutation_number,
        string memory _tenure,
        string memory _sub_division
    ) public onlyOwner {
        Land memory land = Land(
            _UPIN,
            _village,
            _taluko,
            _district,
            _survay_number,
            _area,
            _land_type,
            _khata_number,
            _mutation_number,
            _tenure,
            _sub_division
        );
        farmer.push(land);
        upin_to_land[_UPIN] = land;
        if (bool(Farmers_map[_fid].length >= 0)) {
            // uint256[] memory arr =  uint256();
            // arr.push()
            farmers_arr_add(_fid);
            Farmers_map[_fid].push(_UPIN);
        }
    }

    function getFarmersLands(string memory _fid) public onlyOwner returns(uint256[] memory){
        return Farmers_map[_fid];
    }

    function getFarmersLand(string memory _fid , uint256 _UPIN) public onlyOwner returns(Land memory ){
        return upin_to_land[_UPIN];
    }

    function sell_land(string memory _buyer_fid , string memory _seller_fid ,  uint256 _UPIN) public onlyOwner{
        for(uint i = 0 ; i<Farmers_map[_seller_fid].length ; i++){
            if(Farmers_map[_seller_fid][i]==_UPIN){
                Farmers_map[_seller_fid][i] = uint256(0);
            }
        }
        add_land(_buyer_fid ,farmer[_UPIN].UPIN  ,farmer[_UPIN].village  ,farmer[_UPIN].taluko  ,farmer[_UPIN].district  ,farmer[_UPIN].survayNo  ,farmer[_UPIN].area  ,farmer[_UPIN].land_type  ,farmer[_UPIN].khata_number  ,farmer[_UPIN].mutation_number  ,farmer[_UPIN].tenure  ,farmer[_UPIN].sub_division   );
    }

    function divideLand(string[] memory _arr     ) public {

    }

    function getAllFarmers() public returns(uint256[] memory ){
        Farmers_arr.values;
    }

    function getAllLandsOfFarmer(string memory ) public returns(uint256[] memory){
        // return
    }
}
