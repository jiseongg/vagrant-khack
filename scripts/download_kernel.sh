
echo "Downloading linux-4.4 source..."
wget -c https://www.kernel.org/pub/linux/kernel/v4.x/linux-4.4.tar.gz \
	-P /home/vagrant 1>/dev/null 2>&1 && \
echo "	Complete!"
tar -zxvf /home/vagrant/linux-4.4.tar.gz
