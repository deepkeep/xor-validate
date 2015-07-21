FROM kaixhin/torch

RUN luarocks install nngraph

COPY validate.lua /validate.lua

COPY trained-network.t7 /trained-network.t7

CMD th /validate.lua
