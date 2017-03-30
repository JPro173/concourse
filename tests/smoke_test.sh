status_code=$(curl -I http://45.32.236.15:8080/ -s | head -n 1| awk '{ print $2  }')

if [ $status_code -eq 200 ]; then
    exit 0;
else
    exit 1;
fi
