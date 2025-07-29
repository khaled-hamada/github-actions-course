function greet(name) {
    return `Hello, ${name}!`;
}

module.exports = greet;
// This function can be used to greet a user by their name.
if (require.main === module) {
    const name = process.argv[2] || 'World';
    console.log(greet(name));
}