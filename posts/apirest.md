---
title: API ReST
publish_date: 2022-10-01
---

ReST n’est pas un standard mais un style d’architecture.

- [ECO SYSTEME](#eco-systeme)
- [LES APIS](#les-apis)
- [LES REGLES](#les-regles)
  - [Séparation client/serveur](#séparation-clientserveur)
  - [Stateless](#stateless)

## ECO SYSTEME

- Les applications sont de moins en moins monolithiques.
- De plus en plus d’interactions entre les services afin de fournir un produit
  intéressant.
- Mobile Applications / Single Page Applications / Progressive Web Apps etc…
- Microservices.
- Serverless.
- Open Data.
- Obligations légales

## LES APIS

Les APIs doivent donc être :

- flexibles, extensibles et réutilisables,
- faciles à utiliser et compréhensibles,
- conformes à la Separation of Concerns,
- compatibles avec le plus de technologies possibles : -il faut pouvoir
  développer des clients et des serveurs légers, et si on réutilisait nos proxy
  cache (nginx, Varnish, etc…),
- performantes et sécurisées.

## LES REGLES

### Séparation client/serveur

- L’API ReST n’est pas concernée par l’affichage, les interactions utilisateur
  et la session.
- Tous ces éléments doivent être gérés par le client (Ex. : application web
  frontend).

### Stateless

- Une API ReST ne doit pas maintenir de session ou de contexte.
