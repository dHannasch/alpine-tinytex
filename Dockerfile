FROM alpine:edge

RUN apk add --no-cache texlive \
    && latex --version \
    && tlmgr --version \
    && tlmgr install beamer

