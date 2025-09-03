# FROM registry.access.redhat.com/ubi9/ubi:9.5-1742918310
FROM registry.access.redhat.com/ubi9/ubi-init:9.5

RUN mkdir -p /opt/aes/
COPY *.sh /opt/aes

RUN chmod +x /opt/aes/*.sh
# Install Python 3.9 and pip
# 1st attempt
# RUN dnf install -y python39 python3-pip tmux && dnf clean all

#2nd attempt
# RUN dnf install -y gcc make automake libevent libevent-devel ncurses ncurses-devel \
#     && curl -L https://github.com/tmux/tmux/releases/download/3.4/tmux-3.4.tar.gz -o tmux.tar.gz \
#     && tar -xzf tmux.tar.gz \
#     && cd tmux-3.4 && ./configure && make && make install \
#     && cd .. && rm -rf tmux*

# 3rd attempt
RUN dnf install -y libevent ncurses libevent-devel ncurses-devel gcc make bison pkg-config

ENTRYPOINT ["/opt/aes/entrypoint.sh"]