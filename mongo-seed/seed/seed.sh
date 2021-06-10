#!/bin/sh
mongoimport --uri "mongodb://mongodb:27017/brekkie" --collection shopping_lists --type json --file seed/shopping_lists.json &&
mongoimport --uri "mongodb://mongodb:27017/brekkie" --collection recipes --type json --file seed/recipes.json &&
mongoimport --uri "mongodb://mongodb:27017/brekkie" --collection inventories --type json --file seed/inventories.json &&
mongoimport --uri "mongodb://mongodb:27017/brekkie" --collection food_logs --type json --file seed/food_logs.json &&
mongoimport --uri "mongodb://mongodb:27017/brekkie" --collection favorites --type json --file seed/favorites.json &&
mongoimport --uri "mongodb://mongodb:27017/brekkie" --collection users --type json --file seed/users.json