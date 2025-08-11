class Employ {
    empno = 1;
    name = "Rajesh";
    basic = 83823
}

const obj1 = new Employ();
console.log(`Employ No ${obj1.empno} Employ Name ${obj1.name} Salary ${obj1.basic}`);


// var Employ = /** @class */ (function () {
//     function Employ() {
//         this.empno = 1;
//         this.name = "Rajesh";
//         this.basic = 83823;
//     }
//     return Employ;
// }());
// var obj1 = new Employ();
// console.log("Employ No ".concat(obj1.empno, " Employ Name ").concat(obj1.name, " Salary ").concat(obj1.basic));