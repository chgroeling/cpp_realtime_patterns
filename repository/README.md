# Repository patterns
## Intent
The repository pattern separates the logic to query data from the code that works with the data. It is often used in the context of databases. Basically it can be seen as a container that works according to the [CRUD principle](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete). The database can also be just a memory-storage, which I assume here.

## Further details
When it comes to very complex data, the Repository Pattern can be equipped with generic filter functions that allow a user to query only specific data. In this context, I would like to suggest to the reader the [Specification Pattern](https://deviq.com/design-patterns/specification-pattern), which can be used in conjunction with the Repository Pattern.


## Credits
* [Github-Repo: Design patterns implemented in Java / Repository Pattern](https://github.com/iluwatar/java-design-patterns/tree/master/repository)
* [Repository Pattern](https://deviq.com/design-patterns/repository-pattern)