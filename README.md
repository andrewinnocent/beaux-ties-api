# Bowties E-commerce Site - Rails API



### ERD

![alt text](https://i.imgur.com/88IB23T.jpg "Beaux-ties ERD")

### Technologies Used
- Ruby
- Rails

### API End Points
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| DELETE | `/sign-out`            | `users#signout`   |
| PATCH  | `/change-password`     | `users#changepw`  |
| GET    | `/bowties`             | `bowties#index`   |
| POST   | `/bowties/:id`         | `bowties#show`    |
| GET    | `/cart`                | `cart#index`      |
| GET    | `/cart`                | `cart#create`     |
| PATCH  | `/cart/:id`            | `cart#update`     |
| POST   | `/cart/:id`            | `cart#update`     |
| DELETE | `/cart/:id`            | `cart#destroy`    |


### Planning Process & Problem-solving Strategy


### Version 2.0
- Order history
- Wish lists
-

## Links
- Client repository: https://github.com/andrewinnocent/beaux-ties
- Client deployed website: https://andrewinnocent.github.io/beaux-ties
- API deployed website: https://beaux-ties-rails-api.herokuapp.com
