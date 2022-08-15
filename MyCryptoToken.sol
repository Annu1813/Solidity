//SPDX-License-Identifier: MIT

pragma solidity 0.8.0;



contract MyCryptotoken {

    string public NAME = "IEEE SIESGST";

    string public SYMBOL = "IEEESIESGST";



    mapping(address => uint) balances;

    address deployer;



    constructor() {

        deployer = msg.sender;

        balances[deployer] = 1000000000 * 1e18;

    }



    function name() public view returns(string memory) {

        return NAME;

    }



    function symbol() public view returns(string memory) {

        return SYMBOL;

    }



    function decimal() public pure returns (uint) {

        return 18;

    }



    function balanceOf(address _owner) public view returns(uint) {

        return balances[_owner];

    }


    function transfer(address _to, uint _amount) public {

        balances[msg.sender] -= _amount;

        balances[_to] += _amount;

    }

}
