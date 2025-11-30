FROM nginx
COPY default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/html
COPY ./ /var/www/html
RUN rm -rf /usr/share/nginx/html || true
RUN apt-get update \
	&& apt-get install -y --no-install-recommends netcat-openbsd \
	&& rm -rf /var/lib/apt/lists/*
