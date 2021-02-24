# About the Comscore
Comscore - Web application for comparing different companies by ratings and reviews. (Ruby, Ruby on Rails, PostgreSQL, React)

# Environment configuration:

* Rails version: 6.1.1.1
* Database: PostgreSQL
* Webpack: >= 5.0
* React Hooks, Context API

# How to run locally?
These instructions will get you a copy of the project up and running on your local machine:

1. Clone the repository:
```
   git clone https://github.com/ncr00t/comscore.git
```

2. ```npm install```

3. ```yarn install```

4. ```bundle install```

5. ```bundle exec rails db:create db:migrate db:seed```

6. ```bundle exec rails s```

7. Enter in the browser: ```http://localhost:3000```

# Application Routes

```
             Prefix Verb   URI Pattern                           Controller#Action
               root  GET    /                                      pages#index
    api_v1_companies GET    /api/v1/companies(.:format)            api/v1/companies#index
                     POST   /api/v1/companies(.:format)            api/v1/companies#create
 new_api_v1_company  GET    /api/v1/companies/new(.:format)        api/v1/companies#new
edit_api_v1_company  GET    /api/v1/companies/:slug/edit(.:format) api/v1/companies#edit
     api_v1_company  GET    /api/v1/companies/:slug(.:format)      api/v1/companies#show
                     PATCH  /api/v1/companies/:slug(.:format)      api/v1/companies#update
                     PUT    /api/v1/companies/:slug(.:format)      api/v1/companies#update
                     DELETE /api/v1/companies/:slug(.:format)      api/v1/companies#destroy
     api_v1_reviews  POST   /api/v1/reviews(.:format)              api/v1/reviews#create
      api_v1_review  DELETE /api/v1/reviews/:id(.:format)          api/v1/reviews#destroy
```

# License

Copyright (c) 2021 Ivanisenko Roman Licensed under the [MIT license](LICENSE).

