FROM superruzafa/tinytex
# FROM dahanna/alpine-tinytex:try-ubuntu

RUN tlmgr update --self

RUN tlmgr install mdframed needspace zref tcolorbox listings environ translator beamer

RUN apk add --no-cache abiword
RUN apk add --no-cache libreoffice
