FROM ubuntu:latest

WORKDIR /app



COPY formatter_lib/d /app
COPY formatter_ex_lib/d /app
COPY hello_world_app/hello_world.cpp /app

RUN apt-get update && apt-get install -y g++ && \
    g++ -o hello hello_world.cpp

CMD ["./hello"]

EXPOSE 80
