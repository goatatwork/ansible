FROM alpine:3.14.2
RUN apk add --no-cache ansible
ENTRYPOINT ["ansible"]
