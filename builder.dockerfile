FROM ubuntu:latest AS builder

ARG BS

RUN dd if=/dev/urandom of=/rnd bs=$BS count=100

FROM scratch

COPY --from=builder /bin/sleep /bin

COPY --from=builder /rnd /

CMD ["/bin/sleep", "50000"]
