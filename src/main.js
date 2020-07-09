import "./styles/style.css"; //css import

//your code here
/**@description JS Doc test
 */
let evens = [2, 4, 6, 8];
var odds = evens.map(v => v + 1); //es6 code will be transpiled by Babel transpiler

console.log(odds);
let i = 0;
document.getElementById("btn").addEventListener("click", () => {
	document.getElementById("counter").innerHTML = i++;
	console.log("clicked");
});
