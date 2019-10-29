FROM alpine:latest

# tinytex dependencies
RUN apk --no-cache add \
  perl  \
  wget \
  xz \
  tar \
  fontconfig \
  freetype \
  lua \
  gcc

# add user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# install as appuser
USER appuser

# setup workdir
WORKDIR /home/appuser

# setup path
ENV PATH=/home/appuser/.TinyTeX/bin/x86_64-linuxmusl/:$PATH

# download and install tinytex
RUN wget -qO- "https://yihui.name/gh/tinytex/tools/install-unx.sh" | sh

# add tlmgr to path
RUN /home/appuser/.TinyTeX/bin/*/tlmgr path add

# verify latex version
RUN latex --version \
    && tlmgr --version
# verify tlmgr version

# test that we can install texlive packages
RUN tlmgr install \
    beamer

