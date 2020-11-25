# Microservices - Core Service

This is `Core` service what provide the following functionality

- Registration
- Authentication
- Authorization

## Authentication
#### 1. HTTP Basic Authentication
HTTP Basic Authentication provides a quick way to authenticate users of your application without setting up a dedicated "login" page. To get started, attach the auth.basic middleware to your route. The auth.basic middleware is included with the Laravel framework, so you do not need to define it:
Request:
  ```
  curl --user {email}:{password} http://localhost:8080/basic/me
  ```
Response
  ```
  {
    "name": "admin",
    "email": "sameer@example.com"
  }
  ```
#### 2. Stateless HTTP Basic Authentication
You may also use HTTP Basic Authentication without setting a user identifier cookie in the session, which is particularly useful for API authentication. To do so, define a middleware that calls the onceBasic method. If no response is returned by the onceBasic method, the request may be passed further into the application:

Request:
  ```
  curl --user {email}:{password} http://localhost:8080/once/basic/me
  ```
Response
  ```
  {
    "name": "admin",
    "email": "sameer@example.com"
  }
  ```
#### 3. API Authentication VIA JWT
Request:
  ```
  # Request to get JWT token
  curl -d "email={email}&password={password}" -X POST http://localhost:8080/api/jwt/login
  # Response
    {
      "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwODAvYXBpL2dldEp3dFRva2VuIiwiaWF0IjoxNjA2MzE2MzcxLCJleHAiOjE2MDYzMTk5NzEsIm5iZiI6MTYwNjMxNjM3MSwianRpIjoieks0QTlacjZ2d3JnRTZvcyIsInN1YiI6MSwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.8ncvNbIxP-14vuUadNpCjofNAYXIlylu-pXg2Iq7JHE",
      "token_type": "bearer",
      "expires_in": 3600,
      "user": {User Object}
    }

  
  # Header: "authorization: bearer {access_token}"
  # add above header in your following rquests

  # Request to get User Profile
  GET: http://localhost:8080/api/jwt/user-profile
 
  # Request to get refresh JWT token
  GET: http://localhost:8080/api/jwt/refresh

  # Request to destory JWT token
  GET: http://localhost:8080/api/jwt/logout

  ```

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
- [JetStream](https://jetstream.laravel.com/1.x/introduction.html)
- [Fortify](https://github.com/laravel/fortify)
- [JWT Authentication](https://www.positronx.io/laravel-jwt-authentication-tutorial-user-login-signup-api/)