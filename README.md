# Beaux-ties E-commerce Site - Rails API

My capstone project at GA. "Beaux-Ties" is an e-commerce site where a user can view, add to wishlist, and add to a shopping cart bowties. "Beaux" is "beautiful" or "handsome" (in the plural form) in French.

### ERD

Original plan: ![alt text](https://i.imgur.com/88IB23Tm.jpg "Beaux-ties ERD 1.0")

Final outcome: ![alt text](https://i.imgur.com/RDLp6Tsm.jpg, "Beaux-ties ERD 1.5")

### Technologies Used
- Ruby
- Rails

### Installation
- `bundle install`


### API End Points
| Verb   | URI Pattern          | Controller#Action   |
|--------|----------------------|---------------------|
| POST   | `/sign-up`           | `users#signup`      |
| POST   | `/sign-in`           | `users#signin`      |
| DELETE | `/sign-out`          | `users#signout`     |
| PATCH  | `/change-password`   | `users#changepw`    |
| GET    | `/bows`              | `bowties#index`     |
| GET    | `/bows/:id`          | `bowties#show`      |
| POST   | `/cart`              | `cart#create`       |
| POST   | `/wishes`            | `wishes#create`     |
| PUT    | `/wishes/:id`        | `wishes#update`     |
| GET    | `/wishes`            | `wishes#index`      |
| POST   | `/bows_carts`        | `bows_carts#create` |
| GET    | `/bows_carts`        | `bows_carts#index`  |
| DELETE | `/bows_carts`        | `bows_carts#destroy`|


### Planning Process & Problem-solving Strategy
I planned to work on the API the first three days of project week then focus on building the front-end for the remainder of the time. I ended up working on both concurrently as many changes to functionalities required adjusting both.

The biggest challenge was setting up the right relationships between the resources and understanding which resources to CRUD on. Why the `wish` resource was created was to specifically have a resource to `update`(`PUT`) on for MVP.

### Version 2.0
- Order history
- Proper shopping cart functionality (summarize by bow-tie name, render total price, change quantity, etc.)
  - Strip API
- Search by color or style

## Links
- Client repository: https://github.com/andrewinnocent/beaux-ties
- Client deployed website: https://andrewinnocent.github.io/beaux-ties
- API deployed website: https://beaux-ties-rails-api.herokuapp.com
