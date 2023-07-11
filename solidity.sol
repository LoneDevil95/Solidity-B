// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    //  Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    // created three public tokens with given name
    string public tokenName = "Pratham";
    string public tokenAbbrv = "Vasu";
    uint public totalSupply = 0;

    // Your contract will have a mapping of addresses to balances (address => uint)
    mapping(address => uint) public balances;// we created this public to acess further what it does is 
    // when we pass an adress into here where every adress is associated with Uint by passing adress it returns the token amount

    // You will have a mint function that takes two parameters: an address and a value. 
    //    The function then increases the total supply by that number and increases the balance 
    //    of the “sender” address by that amount

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }
    // Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
    //    It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
    //    and from the balance of the “sender”.
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        } 
        
    }

}
