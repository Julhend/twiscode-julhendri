function binToDec(num) {
    return parseInt((num + '')
        .replace(/[^01]/gi, ''), 2);
}

console.log(binToDec('1001'));

function decToBin(number) {
    var binary = "";

    while (number > 0) {
        if (number % 2 == 0) {
            binary = "0" + binary;
        }
        else {
            binary = "1" + binary;
        }

        number = Math.floor(number / 2);
    }

    return binary;
}

console.log(decToBin(9));