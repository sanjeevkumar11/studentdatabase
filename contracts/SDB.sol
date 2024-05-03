// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract StudentDatabase {
   
    struct Student {
        string name;
        uint256 rollNumber;
        uint256 age;
        string course;
    }
   
    mapping(uint256 => Student) students;
   
    function addStudent(string memory _name, uint256 _rollNumber, uint256 _age, string memory _course) public {
        students[_rollNumber] = Student(_name, _rollNumber, _age, _course);
    }
   
    function getStudent(uint256 _rollNumber) public view returns (string memory, uint256, uint256, string memory) {
        Student memory student = students[_rollNumber];
        return (student.name, student.rollNumber, student.age, student.course);
    }
}