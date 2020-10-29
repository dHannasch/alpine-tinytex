FROM superruzafa/tinytex
# FROM dahanna/alpine-tinytex:try-ubuntu

RUN tlmgr update --self

RUN tlmgr install mdframed needspace zref tcolorbox listings environ translator beamer

RUN apk add --no-cache abiword
RUN apk add --no-cache libreoffice
RUN apk add --no-cache openjdk11-jre-headless  # libreoffice spits out javaldx: Could not find a Java Runtime Environment!
RUN apk add --no-cache poppler-utils
