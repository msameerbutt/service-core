# Microservices - Core Service

This is `Core` service what provide the following functionality

- Registration
- Authentication
- Authorization

## Available Authentication Methods
#### 1. HTTP Basic Authentication
HTTP Basic Authentication provides a quick way to authenticate users of your application without setting up a dedicated "login" page. To get started, attach the auth.basic middleware to your route. The auth.basic middleware is included with the Laravel framework, so you do not need to define it:

```
# POST Request:
curl -d "email={email}&password={password}" -X POST http://localhost:8080/auth/basic/user
# Sample Response
{
  "id": 1,
  "name": "admin",
  "email": "sameer@example.com",
  "email_verified_at": null,
  "api_token": "qiXVi2e17k58VU0Mxl1PDpl7IwfbNsL4cbjRaq9RPICXzcHdPgoOVlHN98Sl",
  "current_team_id": null,
  "profile_photo_path": null,
  "created_at": "2020-11-23T17:56:06.000000Z",
  "updated_at": "2020-11-26T11:57:30.000000Z",
  "profile_photo_url": "https:\/\/ui-avatars.com\/api\/?name=admin&color=7F9CF5&background=EBF4FF"
}
```
#### 2. Stateless HTTP Basic Authentication
You may also use HTTP Basic Authentication without setting a user identifier cookie in the session, which is particularly useful for API authentication. To do so, define a middleware that calls the onceBasic method. If no response is returned by the onceBasic method, the request may be passed further into the application:

```
# POST Request:
curl -d "email={email}&password={password}" -X POST http://localhost:8080/auth/basic/user
# Sample Response
{
  "id": 1,
  "name": "admin",
  "email": "sameer@example.com",
  "email_verified_at": null,
  "api_token": "qiXVi2e17k58VU0Mxl1PDpl7IwfbNsL4cbjRaq9RPICXzcHdPgoOVlHN98Sl",
  "current_team_id": null,
  "profile_photo_path": null,
  "created_at": "2020-11-23T17:56:06.000000Z",
  "updated_at": "2020-11-26T11:57:30.000000Z",
  "profile_photo_url": "https:\/\/ui-avatars.com\/api\/?name=admin&color=7F9CF5&background=EBF4FF"
}
```
#### 3. API Authentication VIA api_token
1. Set a new Guard in auth.php
    ```
   'token-api' => [
        'driver' => 'token',
        'provider' => 'users',
        'hash' => false, // if use use hashed token set it `true`
    ],
    ```
1. Create a column in users table `api_token` varchar(80) unique and nullable
1. Populate that column for the target user you want to login via api, either `'api_token' => Str::random(60)`, if you want to use hashed value then `'api_token' => hash('sha256', Str::random(60))`,
1. Get the token manually from user table or user the following request to get the token
    ```
    # Request to get api_token
    curl -d "email={email}&password={password}" -X POST http://localhost:8080/auth/token/api_token
    # Response
    {
      "access_token": "qiXVi2e17k58VU0Mxl1PDpl7IwfbNsL4cbjRaq9RPICXzcHdPgoOVlHN98Sl",
      "token_type": "bearer",
      "expires_in": "never"
    }
    ```
1. Use above token for following routes
    ```
    # Uset api_token in GET or Post or Bearer   
    # add above header in your following rquests
    
    # Request to get User Profile via GET
    GET: http://localhost:8080/auth/token/user?api_token={token}
   
    # Request to get User Profile via POST
    curl -d "api_token={token}" -X POST http://localhost:8080/auth/token/user 
    
    ```

#### 4. API Authentication VIA JWT
Request:
  ```
  # Request to get JWT token
  curl -d "email={email}&password={password}" -X POST http://localhost:8080/auth/jwt/login
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
  GET: http://localhost:8080/auth/jwt/user
 
  # Request to get refresh JWT token
  GET: http://localhost:8080/auth/jwt/refresh

  # Request to destory JWT token
  GET: http://localhost:8080/auth/jwt/logout

  ```
## API Gateway
### GraphQL
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