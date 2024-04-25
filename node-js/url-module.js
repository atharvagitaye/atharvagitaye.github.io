const url = require('url');

const myUrl = new URL('https://example.com/path?query=string');
console.log('Host:', myUrl.host);
console.log('Pathname:', myUrl.pathname);
console.log('Search Params:', myUrl.searchParams.toString());