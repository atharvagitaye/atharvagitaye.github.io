const EventEmitter = require('events');

// Create an emitter object
const myEmitter = new EventEmitter();

// Event listener
myEmitter.on('greet', (name) => {
    console.log(`Hello, ${name}!`);
});

// Emit the event
myEmitter.emit('greet', 'Alice');