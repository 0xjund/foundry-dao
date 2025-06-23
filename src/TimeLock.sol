// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.24;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    // Min delay is how long you have to wait before executing
    // propers is the list of the addresses that can proposer
    // executors is the list of addresses that can execute

    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors)
        TimelockController(minDelay, proposers, executors, msg.sender)
    {}
}
