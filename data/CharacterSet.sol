// SPDX-License-Identifier: MIT
// Pisoco Contracts
pragma solidity ^0.8.0;


/**
 * @dev String operations.
 */
library CharacterSet {

     bytes internal constant TABLE = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";


    /**
     * @dev Checks if the input string is Alpha Roman Capitals
     */
    function isAplhaRomanCapitals(string memory data) internal pure returns (bool){
        bytes memory b = bytes(data);

        if (b.length == 0) return false;

        for(uint i; i<b.length; i++){
            bytes1 char = b[i];

            if(
                !(char >= 0x41 && char <= 0x5A) && //A-Z
                !(char >= 0x61 && char <= 0x7A)     //a-z
            )
                return false;
        }

        return true;
    }

    /**
     * @dev Checks if the input string is Numeric
     */
    function isNumerals(string memory data) internal pure returns (bool){
        bytes memory b = bytes(data);

        if (b.length == 0) return false;

        for(uint i; i<b.length; i++){
            bytes1 char = b[i];

            if(!(char >= 0x30 && char <= 0x39) )
                return false;
        }

        return true;
    }


}
