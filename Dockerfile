FROM curlimages/curl AS builder

WORKDIR /
RUN curl -sSf https://temporal.download/cli.sh | sh

FROM gcr.io/distroless/base-debian11

COPY --from=builder /home/curl_user/.temporalio/bin/temporal /bin/temporal

ENTRYPOINT ["temporal"]