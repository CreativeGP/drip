# CGP drip
This is a useful tool to browserify nodejs packages easily ^ ^
Feel free to use.

## Usage
First move to directory that "drip.sh" exists.
Write Javascript codes to require package, like as follows;
```javascript
const ppp = require('ppp');
```
This keyword 'const' is very important to work well when you import package in HTML.

Then,
```
./drip.sh -n package_name_to_import -i input.js -s(save byproducts)
```
Keyword 'input.js' is the name of the file you wrote just now.
