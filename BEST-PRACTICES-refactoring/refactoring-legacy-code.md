## [Refactoring Legacy Code with the Strangler Fig Pattern](https://engineering.shopify.com/blogs/engineering/refactoring-legacy-code-strangler-fig-pattern)
###### Adrianna Chang // 11-March-2020 
---

Elevator Pitch
------
This blog post outlines a step-by-step implementation of refactoring legacy code by means of what is called the Stranger Fig Pattern.

------ 

Notable Quotes
------

> 1. We defined the interface for the new system.
> 2. We incrementally replaced reads to the old system with reads to the new interface.
> 3. We defined a new table to hold the data and created a record for the business logic model to use to interface with the database.
> 4. We began writing to the new data source from the new system.
> 5. We backfilled the new data source with existing data from the old data source.
> 6. We changed the readers in the new business logic model to read data from the new table.
> 7. Finally, we stopped writing to the old data source and deleted the remaining legacy code.

------

Conclusion
------
> The appeal of the Strangler Fig Pattern is evident. It reduces the complexity of the refactoring journey by offering an incremental, well-defined execution plan for replacing a legacy system with new code. This incremental migration to a new system allows for constant monitoring and minimizes the chances of something breaking mid-process. With each step, developers can confidently move towards a refactored architecture while ensuring that the application is still up and tests are green. We encourage you to try out the Strangler Fig Pattern with a small system that already has good test coverage in place.

