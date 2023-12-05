// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {StableCoinToken, EtherCoinToken} from "../src/Tokens.sol";
import {MarketPlaceAS} from "../src/Marketplace.sol";

contract DeploymentScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // new StableCoinToken();
        // new EtherCoinToken();
        new MarketPlaceAS(
            address(0x512fB45C344831B147818C81A11E2D39368bb75d), // StableCoinAs Address
            address(0x51E698fC402597824EA586B095DD8DfaCfbEd67c) // EtherCoinAs Address
        );

        vm.stopBroadcast();
    }
}
