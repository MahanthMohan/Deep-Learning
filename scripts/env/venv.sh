echo "--- Creating a virtualenv ---"

echo "** Running commands **"

read -p "Directory path: " path

cd $path
python3 -m virtualenv venv
source venv/bin/activate

echo "--- Successfully created a virtualenv ---"
