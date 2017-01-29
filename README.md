## ToGO!

Esta es una APP dedicada al envio de comida a domicilio de acuerdo a los restaurantes registrados en ella, donde ademas el que hace el envio es el mismo usuario afiliado a la aplicacion, todos en concreto salen beneficiados. Proximamente en desarrollo para su disponibilidad en Web, Android y iOS.

### Development

#### Bloqueado - Push to Master

No se admiten Push to Master por cuestiones de calidad de desarrollo, en general, nuestra manera de trabajar seria de la siguiente: 

- Crear una branch desde Master
- Escribir el codigo dependiendo del Issue que vaya a desarrollar
- Abrir un Pull Request pidiendo la combinacion de esta branch con Master
- Los lideres tecnicos revisan el codigo
- Si necesita cambios se colocan en el Issue, se corriguen y luego se combina.
- Todos quedamos Felices :) 

#### Configuracion

Para iniciar el proyecto en esta primera version de desarrollo tendriamos que crear el siguiente archivo `.envrc` en la carpeta raiz del proyecto, este archivo es el que manejara todas nuestras variables de entorno, usualmente tendemos a usar [direnv](http://direnv.net/). El archivo por ahora deberia quedar asi:

```sh
# User Data Base
export PGUSER=XXXXX
export PGPASSWORD=XXXXX

```

Dos requisitos basicos para iniciar el proyecto son la gema `bundler` y [Ruby](https://rvm.io/rvm/upgrading) `~> 2.3.0`. Para instalar bundler: 

```sh
gem install bundler
```

Tambien sera necesario tener `PostgreSQL 9.5`. 

Una vez todo lo anterior este instalado y/o configurado, procederemos a escribir el siguente comando en la consola para crear nuestra base de datos y poder correr nuestra APP Web de desarrollo.

```sh
rake db:create
```

### Licencia

Este deberia ser un proyecto privado pero no lo es... Aun :( xD.

© 2017 Ruby - Rails - React Native.
