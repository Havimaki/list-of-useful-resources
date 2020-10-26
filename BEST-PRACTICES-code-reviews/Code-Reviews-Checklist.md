## [Code Reviews Checklist](https://www.evoketechnologies.com/blog/code-review-checklist-perform-effective-code-reviews/)
###### Surender Reddy Gutha // Aug-31-2015
---

Elevator Pitch
------
This blog post provides a checklist to help perform effective code reviews.

------

Notable Quotes
------
> While reviewing the code, ask yourself the following basic questions:
> * Am I able to understand the code easily?
> * Is the code written following the coding standards/guidelines?
> * Is the same code duplicated more than twice?
> * Can I unit test / debug the code easily to find the root cause?
> * Is this function or class too big? If yes, is the function or class having too many responsibilities?

> **Code formatting** [...] While going through the code, check the code formatting to improve readability.

> **Architecture** [...] Separation of Concerns followed [...] Code is in sync with existing code patterns/technologies.

> **Maintainability (Supportability)** [...] The application should require the least amount of effort to support in near future. [...] Readability: Code should be self-explanatory. [...] Testability: The code should be easy to test. [...] Debuggability: Provide support to log the flow of control, parameter data and exception details to find the root cause easily. [...] Configurability: Keep the configurable values in place (XML file, database table) so that no code changes are required, if the data is changed frequently.

> **Reusability** [...] The same code should not be repeated more than twice.

> **Reliability** [...] Exception handling and cleanup (dispose) resources.

> **Extensibility** [...] Easy to add enhancements with minimal changes to the existing code.

> **Security** [...] Authentication, authorization, input data validation against security threats such as SQL injections and Cross Site Scripting (XSS), encrypting the sensitive data.

> **Performance** [...] Use a data type that best suits the needs [...] Lazy loading, asynchronous and parallel processing [...] Caching and session/application data.

> **Object-Oriented Analysis and Design (OOAD) Principles**:
> **Single Responsibility Principle (SRS)** [...] Do not place more than one responsibility into a single class or function, refactor into separate classes and functions. 
> **Open Closed Principle** [...] While adding new functionality, existing code should not be modified. New functionality should be written in new classes and functions.
> **Liskov substitutability principle** [...] The child class should not change the behavior (meaning) of the parent class. The child class can be used as a substitute for a base class. 
> **Interface segregation** [...] Do not create lengthy interfaces, instead split them into smaller interfaces based on the functionality. The interface should not contain any dependencies (parameters), which are not required for the expected functionality.
> **Dependency Injection** [...] Do not hardcode the dependencies, instead inject them.


------

Conclusion
------
> The above code review checklist is not exhaustive, but provides a direction to the code reviewer to conduct effective code reviews and deliver good quality code. 
