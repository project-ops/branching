FROM alpine:3.7
# making an addtional layer as ssh and python are necessory
# so caching will be efficient
RUN apk add --no-cache ansible
ENV ANSIBLE_HOST_KEY_CHECKING=False
ENV SSH_AUTH_SOCK=/ssh-agent
EXPOSE 8000
WORKDIR /ansible
CMD ["nc", "-k", "-l", "8000"]
