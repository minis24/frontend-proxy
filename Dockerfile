FROM nginx

#----------------------------------------------
# nginx default setting
#----------------------------------------------
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/nginx-templates/default.conf.template /etc/nginx/templates/default.conf.template
COPY nginx/html/index.html /usr/share/nginx/html/index.html


#----------------------------------------------
# nginx service.dfpcen.com setting(reverse proxy)
#----------------------------------------------
COPY nginx/nginx-templates/front.dfpcen.com.conf.template /etc/nginx/templates/front.dfpcen.com.conf.template
COPY nginx/nginx-templates/adm.dfpcen.com.conf.template /etc/nginx/templates/adm.dfpcen.com.conf.template
COPY nginx/nginx-templates/guide.dfpcen.com.conf.template /etc/nginx/templates/guide.dfpcen.com.conf.template
COPY nginx/nginx-templates/cicd.dfpcen.com.conf.template /etc/nginx/templates/cicd.dfpcen.com.conf.template
COPY nginx/nginx-templates/swagger.dfpcen.com.conf.template /etc/nginx/templates/swagger.dfpcen.com.conf.template
COPY nginx/nginx-templates/biz.dfpcen.com.conf.template /etc/nginx/templates/biz.dfpcen.com.conf.template
COPY nginx/nginx-templates/microserver.dfpcen.com.conf.template /etc/nginx/templates/microserver.dfpcen.com.conf.template


WORKDIR /usr/share/nginx/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]