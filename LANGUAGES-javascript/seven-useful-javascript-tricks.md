## [7 Useful JavaScript Tricks](https://davidwalsh.name/javascript-tricks)
###### David Walsh // 16-April-2019
---

Elevator Pitch
------
This blog post outlines seven useful JavaScript functions and patterns that help speed up the development process.

------

Notable Quotes
------
> Getting an array of unique values:
> ```
> var j = [...new Set([1, 2, 3, 3])]
> [1, 2, 3]
> ```

> [...] filter falsy values [...] Just pass Boolean and all those falsy value go away!
> ```
> myArray
>    .map(item => {
>        // ...
>    })
>    // Get rid of bad values
>    .filter(Boolean);
> ```

> [...] create a pure "dictionary" object [...] There are absolutely no keys or methods on that object that you don't put there!
> ```
> let dict = Object.create(null);
> ```

> The need to merge multiple objects in JavaScript has been around forever.
> ```
> const person = { name: 'David Walsh', gender: 'Male' };
> const tools = { computer: 'Mac', editor: 'Atom' };
> const attributes = { handsomeness: 'Extreme', hair: 'Brown', eyes: 'Blue' };
> const summary = {...person, ...tools, ...attributes};
> ```

> check out this trick for requiring values be passed for a given argument:
> ```
> const isRequired = () => { throw new Error('param required'); };
> const hello = (name = isRequired()) => { console.log(`hello ${name}`) };
> // This will throw an error because no name is provided
> hello();
> // These are good!
> hello(null);
> hello('David');
> ```

> Destructuring is a very welcomed addition to JavaScript but sometimes we'd prefer to refer to those properties by another name, so we can take advantage of aliases:
> ```
> const obj = { x: 1 };
>
> // Grabs obj.x as { x }
> const { x } = obj;
> // Grabs obj.x as { otherName }
> const { x: otherName } = obj;
> ```


> For years we wrote gross regular expressions to get query string values but those days are gone.
> ```
> var urlParams = new URLSearchParams(window.location.search);
> console.log(urlParams.has('post')); // true
> console.log(urlParams.get('action')); // "edit"
> console.log(urlParams.getAll('action')); // ["edit"]
> console.log(urlParams.toString()); // "?post=1234&action=edit"
> console.log(urlParams.append('active', '1')); // "?post=1234&action=edit&active=1"
> ```

------

Conclusion
------
> Just like every other programming language, JavaScript has dozens of tricks to accomplish both easy and difficult tasks. Some tricks are widely known while others are enough to blow your mind. 
