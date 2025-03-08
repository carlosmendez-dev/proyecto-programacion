# Hola, este el el archivo de instalacion del proyecto
# para ejecutarlo puedes ejecutar desde bash (linux y mac) o  git bash (windows):
# sh install.sh

echo 😺 Instalando Proyecto

echo 📦 Descargando dependencias...
# Esto Instala las dependencias del proyecto usando composer (PHP)
composer install
# Esto Instala las dependencias del proyecto usando npm (JavaScript)
npm install

echo 🔧 Configurando...
# Crea un nuevo archivo .env apartir de la copia
cp .env.example .env
# Genera la clave del proyecto para cifrar los datos
php artisan key:generate

echo 📥 Creando Base de datos...
# ejecuta las migraciones de la base de datos
php artisan migrate


echo ✨ Iniciando el proyecto!
composer run dev
