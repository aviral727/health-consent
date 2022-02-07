// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./healthi.sol";

contract dbInterface is healthi {
    
    address public admin;

    constructor() {
        admin = msg.sender;
    }


    function enterPatientDetails
}
