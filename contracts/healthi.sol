// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract healthi {
    struct Patient {
        string Name;
        uint256 Id;
        bool AccessState;
    }
    address public organisation;
    address public patient;

    constructor() {
        admin = msg.sender;
    }

    bool _default;

    mapping(uint256 => Patient) public idToPatient;
    mapping(uint256 => bool) public idToAccess;

    function enterDetails(uint256 patientId, string memory _name) public {
        idToPatient[patientId] = Patient(_name, patientId, false);
    }

    function accessToggle(uint256 _patientId, bool _accessValue) public {
        Patient storage tempPatient = idToPatient[_patientId];
        tempPatient.AccessState = _accessValue;
    }
}
