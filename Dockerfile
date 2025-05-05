FROM ubuntu:latest

# Cài đặt openssh-server, sudo và các công cụ cần thiết
RUN apt-get update && apt-get install -y \
    git \
    openssh-server \
    sudo \
    adduser \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir /var/run/sshd

# Tạo user devuser với password devpass
RUN adduser --disabled-password --gecos "" devuser \
 && echo 'devuser:devpass' | chpasswd \
 && usermod -aG sudo devuser

# Cho phép đăng nhập SSH với password
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
 && sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Mở port 22
EXPOSE 22

# Khởi động SSH server
CMD ["/usr/sbin/sshd", "-D"]