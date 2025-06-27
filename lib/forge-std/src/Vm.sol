pragma solidity >=0.8.0;

interface Vm {
    function startBroadcast() external;
    function stopBroadcast() external;
}
