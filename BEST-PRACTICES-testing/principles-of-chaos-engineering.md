## [Principles of Chaos Engineering](http://principlesofchaos.org/?lang=ENcontent)
###### Mathias Lafeldt // may-2018
---

Elevator Pitch
------ 
This article outlines how to  handle and test points of failure between services in a distributed system through an approach coined "Chaos Engineering".

------ 

Notable Quotes
------ 

>  How much confidence we can have in the complex systems that we put into production?

>  Systemic weaknesses could take the form of: 
> * improper fallback settings when a service is unavailable; 
> * retry storms from improperly tuned timeouts; 
> * outages when a downstream dependency receives too much traffic; 
> * cascading failures when a single point of failure crashes; etc.

> 1. Start by defining ‘steady state’ as some measurable output of a system that indicates normal behavior.
> 2. Hypothesize that this steady state will continue in both the control group and the experimental group.
> 3.Introduce variables that reflect real world events like servers that crash, hard drives that malfunction, network connections that are severed, etc.
> 4. Try to disprove the hypothesis by looking for a difference in steady state between the control group and the experimental group.


> Focus on the measurable output of a system, rather than internal attributes of the system. [...]  The overall system’s throughput, error rates, latency percentiles, etc. could all be metrics of interest representing steady state behavior.  [...] Chaos verifies that the system does work, rather than trying to validate how it works

> Automate Experiments to Run Continuously

> Experimenting in production has the potential to cause unnecessary customer pain. While there must be an allowance for some short-term negative impact, it is the responsibility and obligation of the Chaos Engineer to ensure the fallout from experiments are minimized and contained.

--- 

Conclusion
------

> Chaos Engineering is a powerful practice that is already changing how software is designed and engineered at some of the largest-scale operations in the world.  Where other practices address velocity and flexibility, Chaos specifically tackles systemic uncertainty in these distributed systems.
