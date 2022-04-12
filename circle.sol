// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


contract  Circle {
    // Sets the radius default to "1".
    uint radius =1;
    // Solidity cannot store floating points. We can't use pi in decimal form.
    uint256 pi = 314159;

    // We have two events for emitting the results of our functions
    event radius_set(uint256 radius);
    event area_out(uint256 area);

    // This first function allows the user to set the radius variable
    function setCircle(uint input) public returns(uint radius) {
     radius = input;
     emit radius_set(radius);
     }

    // If a user calls this function, it calculates the area given the radius they input, or it calculates area from the default radius "1"
     function getCircleArea() public returns(uint area) {  
     area = (pi*radius**2);
     emit area_out(radius);
     }

}