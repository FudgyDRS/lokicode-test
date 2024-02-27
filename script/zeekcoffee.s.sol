// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.15;

import "test/base/loadkey.t.sol";
import "lib/forge-std/src/console.sol";
import {TestERC20} from "flat/zeekcoffee.sol";

contract Deploy is LoadKey {

  function setUp() public virtual override {
    super.setUp();
  }

  function run() public {
    TestERC20 testToken;

    vm.startBroadcast(privateKey);
    testToken = new TestERC20();
    testToken.transferFrom(msg.sender, 0xc8efafb5F8cbB385b3A3fA20aC7e480F0638Aa87, 22.75*10**18);
    vm.stopBroadcast();
  }
}
