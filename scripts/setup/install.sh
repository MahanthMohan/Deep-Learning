echo "--- Starting install script ---"
chmod +x * && chmod 755 *

echo "** Installing Python3 and Build Essentials (C/C++ compilers) **"
sudo apt update && apt-get install -y python3-dev python3-pip python3-venv build-essentials

echo "** Installing ML/AI dependencies **"
##############################################
echo "* Level 1 dependencies *"
sudo apt install -y libjpeg-dev libfreetype6-dev pkg-config libpng-dev
pip3 install -y virtualenv pipenv
pip3 install -y numpy scipy pandas scikit-learn scrapy matplotlib ipython pillow
echo "-- Level 1 dependencies installed --"
##############################################
echo "* Level 2 dependencies *"
echo "Install jupyterlab and notebook using pip"
pip3 install -y jupyterlab notebook
echo "Install PyTorch for Jetson Nano"
./install-torch.sh
echo "-- Level 2 dependencies installed --"

echo "--- Finished installing all dependencies ---"
