FROM ubuntu:14.04
ENV USERNAME satya
ENV PASSWORD satya123
RUN mkdir -p /var/run/sshd; \
    apt-get update && apt-get install apt-utils -y && apt-get install net-tools -y && apt-get install openssh-server -y; \
    useradd -d /home/${USERNAME} -g root -G sudo -m -p $(echo "$PASSWORD" | openssl passwd -1 -stdin) $USERNAME
USER $USERNAME

# docker build -t muralidhar123/defaultuser:v1 -f satya.Dockerfile .
# docker container run -itd --name defaultuser muralidhar123/defaultuser:v1
# docker exec -it defaultuser bash
# trivy image muralidhar123/defaultuser:v1 --format table --output scan.sql
# docker tag muralidhar123/defaultuser:v1 muralidhar123/defaultuser:latest
# docker push muralidhar123/defaultuser:latest