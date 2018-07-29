FROM ubuntu:16.04
ADD https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb /tmp
RUN dpkg -i /tmp/erlang-solutions_1.0_all.deb && \
  apt update && \
  apt install -y esl-erlang=1:20.0 elixir=1.5.0-1 && \
  apt-mark hold esl-erlang elixir
