pragma solidity >=0.8.0;

import "./Vm.sol";

abstract contract Script {
    Vm public constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
}
