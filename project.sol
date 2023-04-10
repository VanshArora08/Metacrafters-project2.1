// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract metacrafter {
    address public s_Owner;
    bool public isOwner = false;

    constructor() {
        s_Owner = msg.sender;
    }

    function isOwnerRevert() public {
        if (msg.sender != s_Owner) {
            revert();
        }
        isOwner = true;
    }

    function isOwnerRequire() public view {
        require(s_Owner == msg.sender, "sender is not owner");
    }

    function isOwnerAssert() public view {
        assert(s_Owner == msg.sender);
    }
}
