echo "** Running wget on torch version 1.7.0 **"
wget https://nvidia.box.com/shared/static/wa34qwrwtk9njtyarwt5nvo6imenfy26.whl -O torch-1.7.0-cp36-cp36m-linux_aarch64.whl
echo "** Installing Linear Algebra and other mathematical libraries **"
sudo apt-get install -y libopenblas-base libopenmpi-dev 
echo "** Installing Cython **"
pip3 install -y Cython
echo "** Installing Numpy and PyTorch **"
pip3 install -y numpy torch-1.7.0-cp36-cp36m-linux_aarch64.whl
cd /home/mahanth/Deep-Learning
echo "** Installing TorchVision **"
git clone https://github.com/pytorch/vision
cd vision
sudo python3 setup.py install
cd ~
