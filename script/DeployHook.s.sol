// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/PointsHook.sol";

contract DeployHook is Script {
    function run() external {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(privateKey);

        // TODO: Implement HookMiner logic (from @uniswap/v4-hooks-public) to generate salt for valid hook address
        PointsHook hook = new PointsHook();

        vm.stopBroadcast();
    }
}
