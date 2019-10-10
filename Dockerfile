FROM owasp/zap2docker-stable:latest

# Copy in default tests
COPY tests /zap/wrk

CMD ["zap-baseline.py", "-d", "-r", "zap.html", "-t", "http://web"]