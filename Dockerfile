FROM kaixhin/torch

RUN luarocks install nngraph

WORKDIR /
COPY validate.lua validate.lua
COPY run.sh run.sh

CMD ["/bin/bash", "run.sh"]
