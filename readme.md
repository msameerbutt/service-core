# Microservices - Core Service

This is part of Microservice project and contain the `Core` service what provide the following functionality

- User Registration
- Authentication
- Authorization

## GraphQL
- Endpoint: `http://localhost:8080/graphql`
- Available `Types`
  - Wine
  - Article
  - Author
- Available `Queries`
  - wine or wines
  - article or articles
  - author or authors
  ```
  {
    article (id: 9) {
      id, title, user { 
        name,
        email
      }
    },
    wine (id: 1) {
      id, name, color
    }
  }
  ```
- Available `Mutations`
 - updateWineColor
   ```
   mutation wine {
      updateWineColor(id: 1, color: "blue") {
        id, name, color
      }
    },
   mutation Author {
     updateAuthorEmail(id: 1, email: "sameer@example.com") {
       id, name, email
     }
   }
    ```
  
## Dependencies
### Prerequisites 
- Docker
- Git

### Available Tool Stack 
- PHP FPM 7.4
- Nginx 1.17
- Node 13.7
- Composer 2.0
- Laravel 8

### Step to Bulid & Run Environment, Core service
1. Type `./dev.sh` to bring the menu and follow the instruction
1. Create `app/.env` file from `app/.env.example`
1. Import database file from root directory `backup`
1. Browse `http://localhost:8080` 
1. Login with `admin@localhost/12345678`

## Resources
- [Laravel 8 Basic Authentication setup](https://dev.to/kingsconsult/laravel-8-auth-registration-and-login-32jl)
- [GraphQL with Laravel](https://auth0.com/blog/developing-and-securing-graphql-apis-with-laravel/)
- [Rebing/Graphql-Laravel](https://github.com/rebing/graphql-laravel#schemas)