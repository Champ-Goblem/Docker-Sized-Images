FROM ubuntu:latest AS builder

ARG BS

RUN dd if=/dev/urandom of=/rnd bs=$BS count=100

FROM busybox:latest

COPY --from=builder /rnd /rnd-1
COPY --from=builder /rnd /rnd-2
COPY --from=builder /rnd /rnd-3
COPY --from=builder /rnd /rnd-4
COPY --from=builder /rnd /rnd-5


CMD ["sleep", "50000"]
