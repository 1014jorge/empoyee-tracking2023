const inquirer = require('inquirer');
const mysql = require('mysql');



const connection = mysql.createConnection({
    host: 'localhost',
    port: 3001,
    user: 'root',
    password: 'superman1',
    database: 'employee_tracking'
});

connection.connect((err) =>{
    if (err) throw err;
    runSearch();
});

function runSearch() {
    inquirer
    .prompt({
        name: 'selection',
        type: 'list',
        message: 'What would you like to do?',
        choices: 
        [
            'View all employees',
            'View department',
            'View role',
            'Add employee',
            'Add deparment',
            'Add role',
            'Update role',
        ]
    })
}