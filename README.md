# PHP + Nginx (Docker)

Instrucciones rápidas para ejecutar Nginx con PHP-FPM usando Docker Compose.

Requisitos:
- `docker` y `docker compose` instalados.

Pasos:

1. Construir y levantar los servicios (en el directorio del repo):

```powershell
docker compose up --build
```

2. Abre tu navegador en `http://localhost:8080/info.php` para ver la página de `phpinfo()`.

Notas:
- El servicio `web` construye la imagen desde el `Dockerfile` del repo y usa `default.conf`.
- El servicio `php` usa la imagen oficial `php:8.5-fpm`.
- El contenido del sitio se comparte entre ambos contenedores vía volumen (directorio actual).
