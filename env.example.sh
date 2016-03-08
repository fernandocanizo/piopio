
# Edit appropriately and rename this file to `.env.sh` so it gets ignored by git
# source it to activate virtual environment

export PROJECT_NAME='change_me'
export DEBUG=True
export SECRET_KEY='change_me'

# DB URL should suffice, but if you need more, you can use full URL:
# postgres://username:password@localhost/database
export DATABASE_URL="postgres://localhost/${PROJECT_NAME}"

# You must have created the virtual environment with:
# pyvenv /path/to/your/new/virtual/environment
# prior to activate it:
. ${HOME}/.pyvenv/${PROJECT_NAME}/bin/activate

# let manage.py into PATH
export PATH="/change/me/path/to/this/project/manage.py/directory:${PATH}"
