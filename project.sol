// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract metacrafter {
    address public s_Owner;
    uint public price = 0;

    constructor() {
        s_Owner = msg.sender;
    }

    function isOwnerRevert() public {
        if (msg.sender != s_Owner) {
            revert();
        }

        price += 10;
    }

    function isOwnerRequire() public {
        require(s_Owner == msg.sender, "sender is not owner");

        price += 10;
    }

    function isOwnerAssert() public {
        assert(s_Owner == msg.sender);

        price += 10;
    }
}
