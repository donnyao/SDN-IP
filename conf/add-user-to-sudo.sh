USER=gns3
HOSTNAME=do-client-3

sudo usermod -aG sudo $USER
echo "$USER ALL=(root) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/gns3
sudo chmod 0440 /etc/sudoers.d/$USER
sudo hostnamectl set-hostname $HOSTNAME