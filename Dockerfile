FROM xhofe/alist:latest

ENV ALIST_DATA_DIR=/app/data

EXPOSE 5244

CMD ["/opt/alist/alist", "server", "--data", "/app/data"]
