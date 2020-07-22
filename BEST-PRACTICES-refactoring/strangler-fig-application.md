## [Stranger Fig Application](https://martinfowler.com/bliki/StranglerFigApplication.html)
###### Martin Fowler // 29-June-2004
---

Elevator Pitch
------
This blog post describes a metaphor of refactoring legacy code with the Strangler fig: a tree that seeds in its upper branches and grows downwards, strangling the host upon which it was grown out of.

------

Notable Quotes
------
> While strangling and killing the tree that was their host. This metaphor struck me as a way of describing a way of doing a rewrite of an important system.

> While new features (there are always new features) are liked, old stuff has to remain. Even old bugs often need to be added to the rewritten system.

> An alternative route is to gradually create a new system around the edges of the old, letting it grow slowly over several years until the old system is strangled. 

> The most important reason to consider a strangler fig application over a cut-over rewrite is reduced risk. A strangler fig can give value steadily and the frequent releases allow you to monitor its progress more carefully.

> There's another important idea here - when designing a new application you should design it in such a way as to make it easier for it to be strangled in the future. 

------

Conclusion
------
> One of the natural wonders of this area are the huge strangler figs. They seed in the upper branches of a tree and gradually work their way down the tree until they root in the soil. Over many years they grow into fantastic and beautiful shapes, meanwhile strangling and killing the tree that was their host. This metaphor struck me as a way of describing a way of doing a rewrite of an important system.

