# Verwenden des offiziellen nginx Base Images
FROM nginx:alpine

# Entfernen der Standard-Nginx-Konfigurationsdatei
RUN rm /etc/nginx/conf.d/default.conf

# Hinzufügen der eigenen Nginx-Konfigurationsdatei
COPY nginx.conf /etc/nginx/conf.d/

# Das Verzeichnis für freigegebene Dateien aus dem Repository in den Container kopieren
COPY shared-folder /usr/share/nginx/html/shared-folder

# Port freigeben
EXPOSE 80

# Nginx im Vordergrund starten
CMD ["nginx", "-g", "daemon off;"]
