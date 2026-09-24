# Arch WSL

## Pertama kali install

update system
```bash
pacman -Syu
```
install sudo (optional tapi harus)
```bash
pacman -S sudo
```
buat user
```bash
useradd -m -G wheel -s /bin/bash namauser
```
edit user yang baru kita buat agar bisa jasi superuser
```bash
usermod -aG wheel kito
```
masukkan password
```bash
passwd namauser
```
```bash
setelah muncul new passsword masukkan password anda
```
Install editor nano
```bash
pacman -Sy nano
```
Hilangkan tanda # di bagian wheel
```bash
EDITOR=nano visudo
```
```bash
%wheel ALL=(ALL:ALL) ALL 
```
edit pacman.conf jika ingin loading pacman muncul, hapus tanda # dibagian Noprogress
```bash 
nano /etc/pacman.conf
```
jika tidak otomatis masuk /home/user/. masuk secara manual lalu 
```bash
nano .bashrc
```
massukan cd "$HOME" di akhir script