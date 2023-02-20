set -e

supervisord -c /root/supervisor.conf

tail -F /var/log/tuzach/tuzach_frontend.stdout.log
