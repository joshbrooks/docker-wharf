import os

SERVER_MODE = False
DEFAULT_SERVER = '0.0.0.0'
DEFAULT_SERVER_PORT = int(os.getenv('PG_ADMIN_PORT', 5050))
LOG_FILE = '/var/log/pgadmin4/pgadmin4.log'
SQLITE_PATH = '/var/lib/pgadmin4/pgadmin4.db'
SESSION_DB_PATH = '/var/lib/pgadmin4/sessions'
STORAGE_DIR = '/var/lib/pgadmin4/storage'
