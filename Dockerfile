FROM ubuntu:latest
ENV TOKEN=null
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    lib32gcc-s1 \
    libcurl3-gnutls \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /home/steam/steamcmd
RUN curl -s http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -v -C /home/steam/steamcmd -zx
RUN mkdir -p /home/steam/.klei/DoNotStarveTogether/
COPY ./MyDediServer/ /home/steam/.klei/DoNotStarveTogether/MyDediServer/
COPY ./run_dedicated_servers.sh /home/steam/run_dedicated_servers.sh
RUN echo ${TOKEN} > /home/steam/tk.txt
RUN ls -lath /home/steam/
RUN chmod +x /home/steam/run_dedicated_servers.sh
WORKDIR /home/steam/steamcmd
RUN useradd -m steam && chown -R steam:steam /home/steam
USER steam
EXPOSE 8768/tcp
EXPOSE 8768/udp
EXPOSE 8769/tcp
EXPOSE 8769/udp
EXPOSE 11001/tcp
EXPOSE 11001/udp
EXPOSE 11000/tcp
EXPOSE 11000/udp
EXPOSE 27018/tcp
EXPOSE 27018/udp
EXPOSE 27019/tcp
EXPOSE 27019/udp

CMD ["/home/steam/run_dedicated_servers.sh"]