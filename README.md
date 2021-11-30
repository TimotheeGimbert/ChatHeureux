# HEROKU LIVE TEMPORARY LINK
https://chaleureux33270.herokuapp.com/

# CHALEUREUX
Boutique de photographie de chat réalisée dans le cadre de la formation THP

## Environnement
Rails 6.1.4.1
Ruby 2.7.4

## Création de l'application

```
yarn add bootstrap
yarn add popper.js
yarn add @popperjs/core
yarn add @fortawesome/fontawesome-free
```

Créer app/javascript/stylesheets/application.scss
```css
@import “bootstrap”;
```
Ajouter à app/javascript/packs/application.js
```js
import "bootstrap"
import "stylesheets/application"
import "@fortawesome/fontawesome-free/css/all.css";
```
