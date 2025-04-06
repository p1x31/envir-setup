DEBIAN_FRONTEND=noninteractive

sudo rm /etc/apt/apt.conf.d/*.*
sudo apt update
sudo apt install git
sudo apt install curl
mkdir downloads
cd downloads
wget https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh
bash Anaconda3-2024.10-1-Linux-x86_64.sh
echo 'export PATH=~/anaconda3/bin:$PATH' >> ~/.bashrc
export PATH=~/anaconda3/bin:$PATH
source ~/.bashrc
conda create -n py312 python=3.12
conda env update
echo 'source activate py312' >> ~/.bashrc
source activate py312
source ~/.bashrc
