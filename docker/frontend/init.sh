set -e

supervisord -c /root/supervisor.conf

tail -F /var/log/ace/ace_frontend.stdout.log
