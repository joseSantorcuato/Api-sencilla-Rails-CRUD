# README

Aplicación sencilla, api para consumo desarrollada en Rails, CRUD, para mayor comodidad
te invito a descargar el repositorio y renonmbrarlo "profesores".Puedes ejercitar agregando estilos.
Esta Api utiliza postgreSQL 

Puedes verlo en línea :


https://agile-island-18325.herokuapp.com/profesores

Rutas:

Prefix Verb URI Pattern Controller#Action

profesores GET /profesores(.:format) profesores#index
POST /profesores(.:format) profesores#create
new_profesore GET /profesores/new(.:format) profesores#new
edit_profesore GET /profesores/:id/edit(.:format) profesores#edit
profesore GET /profesores/:id(.:format) profesores#show
PATCH /profesores/:id(.:format) profesores#update
PUT /profesores/:id(.:format) profesores#update
DELETE /profesores/:id(.:format) profesores#destroy

El modelo es este:

rails generate scaffold Profesores nombre:string disciplina:text titulo:string fecha_nac:date

*No olvides editar el archivo config/database.yml con tus parámetros de conexión.