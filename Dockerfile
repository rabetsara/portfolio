FROM nginx:alpine

# Copie tous les fichiers statiques du portfolio dans le dossier servi par Nginx
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY script.js /usr/share/nginx/html/script.js
COPY image/ /usr/share/nginx/html/image/
COPY cv/ /usr/share/nginx/html/cv/

EXPOSE 80

# Nginx tourne déjà en foreground par défaut dans l'image officielle,
# pas besoin de surcharger le CMD.
