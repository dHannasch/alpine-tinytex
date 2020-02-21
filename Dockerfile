FROM dahanna/alpine-tinytex:try-ubuntu

RUN tlmgr update --self

RUN tlmgr install mdframed needspace zref tcolorbox listings environ translator

