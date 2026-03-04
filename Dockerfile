FROM xhofe/alist:latest

COPY alist_backup.json /opt/alist/alist_backup.json
COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 5244

ENTRYPOINT ["/start.sh"]
