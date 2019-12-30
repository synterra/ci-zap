FROM owasp/zap2docker-stable:latest

# Copy in default test configuration
COPY gen.conf /zap/wrk

# Install default/autotest configuration and mount
VOLUME ["/src"]
WORKDIR /src
COPY pages.txt /src/

CMD ["zap-baseline.py", "-d", "-r", "zap.html", "-t", "http://web", "-c", "gen.conf"]
