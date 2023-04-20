FROM ubuntu:latest

WORKDIR /app

RUN apt-get update && apt-get install -y g++

COPY formatter_lib /app/formatterlib
COPY formatter_ex_lib /app/formatterexlib
COPY solver_lib /app/solverlib
COPY solver/d/equation.cpp /app

CMD "g++", "-I./formatter_lib", "-I./formatter_ex_lib", "-I./solver_lib", "equation.cpp", "-o", "app"

EXPOSE 80
