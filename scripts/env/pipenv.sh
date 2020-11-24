echo "--- Creating a pipenv ---"

echo "** Running commands **"

read -p "Directory path: " path

cd $path
pipenv install requests

echo "--- Successfully created a pipenv ---"
