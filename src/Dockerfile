FROM mysql:8.0

# Establecer variables de entorno por defecto
ENV MYSQL_ROOT_PASSWORD=defaultroot
ENV MYSQL_DATABASE=defaultdb
ENV MYSQL_USER=defaultuser
ENV MYSQL_PASSWORD=defaultpass

# Crear directorio para scripts de inicialización
RUN mkdir -p /docker-entrypoint-initdb.d

# Copiar configuración personalizada de MySQL si existe
COPY my.cnf /etc/mysql/conf.d/ 2>/dev/null || :

# Copiar scripts de inicialización
COPY sql-scripts/*.sql /docker-entrypoint-initdb.d/ 2>/dev/null || :

# Configurar permisos
RUN chmod -R 755 /docker-entrypoint-initdb.d

# Exponer puerto
EXPOSE 3306

# Usar el comando por defecto de MySQL
CMD ["mysqld"]