# FROM superruzafa/tinytex # works but tlmgr update --self does not respect proxy settings
FROM dahanna/alpine-tinytex:try-ubuntu

RUN tlmgr update --self

RUN tlmgr install mdframed needspace zref tcolorbox listings environ translator

