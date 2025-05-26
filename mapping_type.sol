// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract HelloWorld {
    string public test_string = "Hello World";

    function returnname01()
        public
        pure
        returns (
            uint256 _number,
            bool _bool,
            uint256[3] memory _array
        )
    {
        return (1, false, [uint256(1), 2, 3]);
    }

    function returnName02()
        public
        pure
        returns (
            uint256 _number,
            bool _bool,
            uint256[3] memory _array
        )
    {
        _number = 1;
        _bool = false;
        _array = [uint256(1), 2, 3];
    }

    function returnName03() public pure {
        uint256 _number;
        bool _bool;
        uint256[3] memory _array;
        (_number, _bool, _array) = returnName02();
    }
}
