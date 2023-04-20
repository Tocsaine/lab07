FROM ubuntu:latest

WORKDIR /app



COPY formatter_lib /app/formatterlib
COPY formatter_ex_lib /app/formatterexlib
COPY solver_lib /app/solverlib
COPY solver/d/equation.cpp /app

RUN apt-get update && apt-get install -y g++ && \
    g++ -I./formatter_lib -I./formatter_ex_lib \
    -I./solver_lib -o solver equation.cpp

CMD ["./solver"]

EXPOSE 80
