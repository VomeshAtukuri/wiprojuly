function greeting(name : string){
    console.log("Good Morning " +name);
}

function sum(x : number, y : number) : number {
    return x + y;
}

function sub(x : number, y : number) : number {
    return x - y;
}

// JS Equivalent
function mult(x, y){
    return x * y;
}

console.log("Sum is " +sum(12,5));
console.log("Sub is  " +sub(12,5));
console.log("Mult is " +mult(12,5));
greeting("Venkat");