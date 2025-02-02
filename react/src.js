
// write function input num output array prime number from 1 to num
// example
// input 10
// output [2,3,5,7]

function primeNumber(num) {
    let arr = [];
    for (let i = 2; i <= num; i++) {
        let isPrime = true;
        for (let j = 2; j < i; j++) {
        if (i % j === 0) {
            isPrime = false;
            break;
        }
        }
        if (isPrime) {
        arr.push(i);
        }
    }
    return arr;
    }

    console.log(primeNumber(10)); // [2,3,5,7]

