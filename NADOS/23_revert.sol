// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract a{

    address public owner = msg.sender ;
    uint public age = 25 ;

    function CheckRequire(uint _x) public {
        age+=5 ;
        require(_x>2  , "value of x is greterthan 2");
        // age = 10;
    }

    
    error throwError(string  , address);
    function checkRevert(uint _x) public{
        age+=5;
        if(_x<2) {
            revert throwError("value is lessthen 2" , msg.sender);
        }
    }
    function ownerRequire() public {
        age+=11;
        require(owner==msg.sender);
        
    }
    error fundd(string);
    function ownerrevert()public {
        if(owner != msg.sender){
            revert fundd("you are not owner");
        }
    }

    function checkowner() public view {
        assert(owner==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }


   

}

// error InsufficientBalance(uint256 available, uint256 required);

// contract TestToken {
//     mapping(address => uint) balance;
//     function transfer(address to, uint256 amount) public {
//         if (amount > balance[msg.sender])
//             revert InsufficientBalance({
//                 available: balance[msg.sender],
//                 required: amount
//             });
//         balance[msg.sender] -= amount;
//         balance[to] += amount;
//     }
// }