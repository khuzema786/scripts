banner()
{
  echo "+-------------------------------------------------------------------------------------+"
  echo "|  _,_ _ _,  _,  _ _, _  _,        _, _,  _,             _, __, __, _,_ __, __,  _,   |"
  echo "|  |_/ | |   |   | |\ | / _       / \ |   |             (_  |_  |_) | / |_  |_) (_    |"
  echo "|  | \ | | , | , | | \| \ /       |~| | , | ,           , ) |   | \ |/  |   | \ , )   |"
  echo "|  ~ ~ ~ ~~~ ~~~ ~ ~  ~  ~        ~ ~ ~~~ ~~~            ~  ~~~ ~ ~ ~   ~~~ ~ ~  ~    |"
  echo "+-------------------------------------------------------------------------------------+"
}

banner "Killing All Servers"

PORTS=(8013 8014 8015 8016 8017 8018 8019 8020 8023 8024 8025 8032 8050 8051 8053 8055 8099 8115 8080 4545 6235 4343 8051 8081 29092)
# PORTS=(6380 6381 2181)

for PORT in "${PORTS[@]}"; do
  echo "Killing processes on port $PORT"
  lsof -i :$PORT | awk 'NR!=1 {print $2}' | xargs kill -9
done