// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import {Script, console2} from "forge-std/Script.sol";
import "../src/AllowlistNFT.sol";

contract AllowlistNFTScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        vm.startBroadcast(deployerPrivateKey);

        AllowlistNFT allowlistNFT = new AllowlistNFT(
            "EDGE", // name
            "ARTEDGE", // ticker
            0x000, // allowlistRoot
            10000, // maxSupply
            0.01 ether, // price of public mint
            0.01 ether, // price of allowlist mint
            1705597895, // allowlistOpen timestamp 1719639703
            1705601495, // allowlistClose timestamp
            1, // maxAllowlistMint
            5, // maxPublicMint
            "https://ipfs.io/ipfs/QmYGSHmjn1m8qojs4xnDFSQ5hQcSxUGQx5E1ucAH84tuKK" // baseURI - this should be YOUR IPFS HASH! //https://ipfs.io/ipfs/QmYGSHmjn1m8qojs4xnDFSQ5hQcSxUGQx5E1ucAH84tuKK?filename=logoMarklg.png
        );
        vm.stopBroadcast();
        console2.log("AllowlistNFT address: ", address(allowlistNFT));
    }
}
