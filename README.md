# Table of contents
- [About Brekkie](#Brekkie)
- [Configuration](#Configuration)
- [Folder structure](#Folder-structure)
- [DB](#DB)
- [Backend](#Backend)
- [Authorization](#Authorization)
    - [Authentication](#Authentication)
    - [Authorization](#Authorization)
    - [Endpoints](#Endpoints)
- [Frontend](#Frontend)
    - [Search](#Recipes-search)
    - [Detail](#Recipe-detail-view)
    - [Favorites](#Favorites)
    - [Inventory](#Inventory)
    - [Shopping List](#Shopping-List)
    - [Meal tracker](#Meal-tracker)
    - [Admin panel](#Admin-panel)
#

# Brekkie
It's a web application to help you find recipes with the ingredients you have and add servings of such recipes to a meal tracker where you can see stats of calories and macronutrients consumption.

Made with

- Backend: NodeJS + Express and Mongoose
- DB: MongoDB
- Frontend: React + Redux

The recipes where extracted from [LivelyTable](https://livelytable.com/) using a [Scraper](https://github.com/jarki7777/recipe-scraper.git) made with `puppeteer`

Proceed to the next steps to run locally or take a look at the [live version demo](https://master.d1km7u68buxfif.amplifyapp.com/)

- Use the [sample](#The-sample-user-credentials-are) users to see all functionalities underway
#

# Configuration
- Clone the [Main repository](https://github.com/jarki7777/brekkie).

- In the root folder clone the [Back](https://github.com/jarki7777/brekkie-backend.git) and [Front](https://github.com/jarki7777/brekkie-frontend.git)

- on root folder:

        docker compose up

By default the react server will run on port 3000 and the Express server will run on port 5000, you can modify the PORTS on the `docker-compose.yml` file

- After docker compose ends Open a new browser tab http://localhost:3000/

- Use the [sample](#The-sample-user-credentials-are) users to see all functionalities underway

# Folder structure

            brekkie
            ├───brekkie-backend
            │   ├───config
            │   ├───controllers
            │   ├───middleware
            │   ├───models
            │   ├───public
            │   ├───routes
            │   └───util
            └───brekkie-frontend
                ├───public
                │   └───img
                └───src
                    ├───components
                    │   ├───comments
                    │   ├───dropdownMenu
                    │   ├───errorMsg
                    │   ├───footer
                    │   ├───header
                    │   ├───inventoryAccordion
                    │   ├───inventoryIngredients
                    │   ├───login
                    │   ├───mainPageCard
                    │   ├───myIngredients
                    │   ├───navbar
                    │   ├───navItem
                    │   ├───nutrientsPieChart
                    │   ├───nutritionalInfo
                    │   ├───pagination
                    │   ├───rangeBarChart
                    │   ├───recipeCard
                    │   ├───recipeDetail
                    │   ├───setCaloriesModal
                    │   ├───signUp
                    │   ├───userCardModal
                    │   ├───userComment
                    │   └───voteModal.js
                    ├───containers
                    │   ├───adminView
                    │   ├───favorites
                    │   ├───inventory
                    │   ├───main
                    │   ├───mealTracker
                    │   ├───recipeView
                    │   ├───searchView
                    │   └───shoppingList
                    ├───fonts
                    │   └───SF-Pro
                    ├───icons
                    ├───services
                    ├───store
                    │   ├───actions
                    │   └───reducers
                    └───util

[TOP](#Table-of-contents)
#

# DB
- Schema

![database_diagram](https://user-images.githubusercontent.com/76188418/121543555-4bca5600-ca09-11eb-9586-9073e9847f1c.png)

The recipes where extracted from [LivelyTable](https://livelytable.com/) using a [Scraper](https://github.com/jarki7777/recipe-scraper.git) made with puppeteer

[TOP](#Table-of-contents)
#

# Backend

[API Documentation](https://documenter.getpostman.com/view/14151477/TzeRqARd)

### The sample user credentials are:
- admin:

    email: admin@admin.com

    password: Hu?8v/S;

- moderator:

    email: mod@mod.com

    password: Hu?8v/S;

- client:

    email: user@user.com

    password: Hu?8v/S;

## Authentication
New users will have to signup in order to access the app.

Registered users can login and once the user is logged in, each subsequent request must include a **JSON Web Token**, which allows the user to access routes, services, and resources that are permitted with that token.
#

## Authorization
All new users are created with 'client' role by default, only the 'admin' role user can create, update or delete documents. The 'mod' users can update documents and delete comments.
#

## Endpoints
The supported request body format is JSON

All endpoints but the login and signup require authentication by JWT sent on the request via bearer token

[API Documentation](https://documenter.getpostman.com/view/14151477/TzeRqARd)

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/721ffd88ac0dd1995705?action=collection%2Fimport)

[TOP](#Table-of-contents)
#

# Frontend
## Features
- ## Recipes search

Search recipes by keyword or check the box to search only recipes with the ingredients you have

![search](https://user-images.githubusercontent.com/76188418/121557888-6a364e80-ca15-11eb-8784-1006233ee2c6.png)
#

- ## Recipe detail view

- You can add items to your shopping list directly from this view

![detail](https://user-images.githubusercontent.com/76188418/121557887-6a364e80-ca15-11eb-891d-e7da3483084b.png)

- And rate the recipes

![image](https://user-images.githubusercontent.com/76188418/121561747-10378800-ca19-11eb-9135-2a9e5f04512a.png)
#

- ## Comments

Users can comment the recipes and Admins and Mods can delete comments

![comments](https://user-images.githubusercontent.com/76188418/121557884-6a364e80-ca15-11eb-8d3b-2c0b0acc06a4.png)
#

- ## Favorites

Users can revisit their favorited recipes from a favorite view

![favorites](https://user-images.githubusercontent.com/76188418/121557882-699db800-ca15-11eb-953a-c0848b3c6e72.png)
#

- ## Inventory

- Users can add items to the inventory from a default list

![inventory_list](https://user-images.githubusercontent.com/76188418/121557880-699db800-ca15-11eb-8a9a-8960291ad4c5.png)
#

- Or add them manually from a textbox and manage their current inventory

![inventory_owned](https://user-images.githubusercontent.com/76188418/121557878-699db800-ca15-11eb-8d04-8841a4e4a1e7.png)
#

- ## Shopping List

Users can manage their shopping list from the shopping list view

![shopping_list](https://user-images.githubusercontent.com/76188418/121557877-69052180-ca15-11eb-9af6-d592b0cb037a.png)
#

- ## Meal tracker

Users can track their calories and macronutrients consumption

- Daily

![daily_tracker](https://user-images.githubusercontent.com/76188418/121557876-69052180-ca15-11eb-92e4-c33a7d44fd01.png)
#

- By range of dates

![range_tracker](https://user-images.githubusercontent.com/76188418/121557874-686c8b00-ca15-11eb-9100-9996506945a3.png)
#

- ## Admin panel

From here, admin cand delete and update and mods can update users

![admin](https://user-images.githubusercontent.com/76188418/121557871-67d3f480-ca15-11eb-9690-fa1051816a75.png)
#


### Author
[Jarki Melendez](https://www.linkedin.com/in/jarki-melendez/)

[TOP](#Table-of-contents)