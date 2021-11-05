FROM ubuntu:latest AS builder

ARG BS

RUN dd if=/dev/urandom of=/rnd bs=$BS count=100

FROM busybox:latest

COPY --from=builder /rnd /

CMD ["sleep", "50000"]
