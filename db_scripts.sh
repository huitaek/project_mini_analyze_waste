# 도커 컨테이너 실행
if [ $1 == 'up' ]; then 
    docker compose up -d
fi

# 도커 컨테이너 중단 및 제거
if [ $1 == 'down' ]; then
    docker compose down -v
fi