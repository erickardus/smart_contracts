pragma solidity ^0.4.0;

contract TeacherContract {

    struct Entity {
        teacher voted;
    }

    address admin;
    mapping(address => Entity) entities;

    /// Create a new TeacherContract.
    function TeacherContract public {
        admin = msg.sender;
    }

    function makeTeacher(address person) public {
        if (msg.sender != admin) return;
        entities[person].teacher = true;
    }

}
