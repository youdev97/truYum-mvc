# truYum Spring Boot MVC Application

## Introduction

It's practice case study that I had to realize while following the Cognizant's FullStack Engineer Program.
Spring MVC App for a Restaurant 'truYum' and where multiple use case specification must be provided like CRUD of Menu Items, Carts, JSP pages, forms etc.

## Architecture

Customer should be able to see active items from the menu and add it to his cart, consult and remove items from his cart.
Admin should be able to edit each menu item

## Tools

* Java
* Maven
* Spring Boot
* H2
* JSP

## Run

In the root folder :

```console
mvn package
java -jar target/truYum3-0.0.1-SNAPSHOT.jar
```

Customer view available at
<http://localhost:8080/show-menu-list-customer>

Admin view available at
<http://localhost:8080/show-menu-list-admin>
