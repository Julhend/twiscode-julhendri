function checkPalindrome(str) {
    var word = str.split("").reverse("").join("");
    return str == word;
}

function longPalindrome(str) {

    var maxLength = 0,
        maxPalindrome = '';

    for (var i = 0; i < str.length; i++) {
        var subs = str.substr(i, str.length);

        for (var j = subs.length; j >= 0; j--) {
            var subStr = subs.substr(0, j);
            if (subStr.length <= 1)
                continue;

            if (checkPalindrome(subStr)) {
                if (subStr.length > maxLength) {
                    maxLength = subStr.length;
                    maxPalindrome = subStr;
                }
            }
        }
    }

    return maxPalindrome;
}

console.log(longPalindrome("akusukamakannasi"));
