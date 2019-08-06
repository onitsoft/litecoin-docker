FROM onitsoft/coin-base:latest
LABEL maintainer="info@n.exchange"
LABEL build_date="2019-08-06"
LABEL description="v0.17.1"
ADD app/ $COIN_BASE/app/
RUN chmod -R +x $COIN_BASE/app/*
RUN chown -R coin:coin $COIN_BASE
USER coin
CMD ["/bin/bash"]
