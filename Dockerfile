FROM scratch
COPY goapp /goapp
EXPOSE 5000
ENTRYPOINT [ "/goapp" ]