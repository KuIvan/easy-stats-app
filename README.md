# Easy-Stats-Web

# README
Technology stack:

* Ruby 3.0.2
* Rails ~> 6.1.4

Start:

```Before starting, be sure that you have the required versions installed, as described above.```

```Make sure you have redis and postgres services running.```

* bundle install
* rails db:create
* rails db:migrate
* rails db:seed

# NOTES

1) Use this command for create rvmrc

```rvm use 3.0.2@easy-stats-web --default --create --rvmrc```

2) Need to update
   
* ruby to 3.0.3
* rails to 7.0.2.3

3) Example query

```
query FetchUsers {
  fetchUsers {
    nodes {
      id
      fullName
    }
  }
}
```

4) Example mutation

```
mutation UpdateUser (
  $id: ID!,
  $firstName: String
) {
    updateUser (
      input: {
        params: {
          id: $id,
          firstName: $firstName
        }
      }
    ) 
  {
    user {
      id
      fullName
    }
  }
}

// Query Variables
{"id": 1, "firstName": "John"}

```