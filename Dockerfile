FROM owasp/zap2docker-stable:latest

# Copy in default tests
COPY tests /zap/wrk

# Bowline configuration
LABEL exposed.command.multiple.zap="/zap/zap-baseline.py"

CMD ["zap-baseline.py", "-d", "-r", "zap.html", "-t", "http://web"]
