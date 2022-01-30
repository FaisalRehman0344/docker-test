docker kill dt
docker rm -f dt
docker build -t dt .
docker run -d --name dt -dp 80:8080 dt:latest