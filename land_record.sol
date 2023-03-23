// SPDX-Licence-Identifier : MIT 

pragma solidity ^0.6.6 ;
import "./land_info.sol";

contract UpinToAddress   {
    uint256 [] public upin;
    mapping(uint256 => address ) public upinToAddress;
    // LandRecord public 
    
    function addLand(uint256 _UPIN, address _land_address ) public {
        upin.push(_UPIN);
        upinToAddress[_UPIN] = _land_address ;
    }


}