FROM microsoft/nanoserver

EXPOSE 5201

RUN powershell -NoProfile -Command \
        Invoke-WebRequest https://iperf.fr/download/windows/iperf-3.1.3-win64.zip -OutFile iperf.zip; \
        Expand-Archive iperf.zip -DestinationPath '%ProgramFiles%'; \
        Remove-Item -Force iperf.zip

RUN setx /M PATH "%PATH%;%ProgramFiles%\iperf-3.1.3-win64"

CMD ["iperf3", "-s"]
