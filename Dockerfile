FROM xhofe/alist:latest

EXPOSE 5244

ENTRYPOINT ["/opt/alist/alist"]
CMD ["server", "--data", "/opt/alist/data"]
