# HEROKU LIVE TEMPORARY LINK
https://chatbytiques.herokuapp.com/

# CHALEUREUX
Boutique de photographie de chat réalisée dans le cadre de la formation THP

# Description 

## Version minimaliste
La version minimaliste du site est la suivante :

Vous allez coder une boutique en ligne, qui vend des photos de chatons. La page d'accueil du site comprendra la liste des produits qui sont à vendre. Un visiteur peut cliquer sur l'un des produits pour l'afficher et avoir plus de détails sur le produit. Le visiteur devra s'inscrire pour ajouter ce produit à son panier.

Un utilisateur peut accéder facilement à son panier, modifier la quantité de produits à acheter, puis accéder au checkout pour payer. Il paiera via Stripe le total, il recevra un email avec la·les photo·s de chaton·s. L'administrateur du site recevra aussi un email avec le récapitulatif de la commande qui vient d'être passée.

Nous demanderons pour la version minimaliste un fichier `seed.rb` qui contient quelques exemples de produits, pour que toute l'équipe de développement puisse en profiter.

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
