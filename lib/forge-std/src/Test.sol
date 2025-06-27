pragma solidity >=0.8.0;

import "./Vm.sol";

contract Test {
    Vm public constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    function assertEq(uint256 a, uint256 b) internal pure {
        if (a != b) {
            revert("assertion failed");
        }
    }
}

library console {}
