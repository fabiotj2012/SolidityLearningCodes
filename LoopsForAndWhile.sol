// SPDX-License-Identifier: MIT
//That was the hardest today. - 09/08/2022 :) 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ForAndWhileLoops {
    // Sum with While
    function sumWhile(uint _n) external pure returns (uint) {
        uint s = 1; //Important in this sample is set initial value for s and accumulator variables
        uint accumulator = 0;
        while (s <= _n) {
            accumulator = accumulator + s;
            s++;
        }
        return accumulator;
    }
    
    // Sum with For
    function sum(uint _n) external pure returns (uint) {
        uint accumulator = 0;
        for (uint s = 1; s <= _n; s++) {
            accumulator = accumulator + s;
        }
        return accumulator;
    }

/*  function loop() external pure {
        // for loop
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        // while loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
*/

}
