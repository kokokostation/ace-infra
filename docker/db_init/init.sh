set -e

CONN="dbname=ace host=db user=ace password=ace"

until psql "$CONN" -c '\q'; do
  >&2 echo "Postgres is unavailable - sleeping"
  sleep 1
done

>&2 echo "Postgres is up - executing command"

ACE_BACKEND_ROOT=$(python3 -c "import importlib_resources; print(str(importlib_resources.files('ace_backend')));")
pgmigrate -t latest -d "$ACE_BACKEND_ROOT/postgresql/pgmigrate" -c "$CONN" migrate
