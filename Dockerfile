# usa a imagem oficial do PHP com apache
From php:8.2-apache

# copia os arquivos da sua aplicação para o diretório padrão do apache
COPY . /var/www/html/

# habilita módulos adicionais do apache (opcional)
RUN dockter-php ext-install mysqli pdo pdo_mysqli

# exponha a porta padrão do apache
EXPOSE 80
