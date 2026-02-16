#!/bin/bash

echo "===== RyzenAdj AATU Imported Profile (Linux Version) ====="

# PENTING: Sesuaikan path di bawah ini dengan lokasi ryzenadj kamu.
# Jika ryzenadj sudah terinstall di sistem, biarkan saja "ryzenadj".
# Jika file ada di folder yang sama dengan script ini, ubah jadi "./ryzenadj"
RYZENADJ_PATH="ryzenadj"

echo "Path: $RYZENADJ_PATH"
echo "Running as Root..."
echo ""

# Cek apakah user menjalankan script sebagai root (wajib untuk ryzenadj)
if [ "$EUID" -ne 0 ]
  then echo "ERROR: Harap jalankan script ini menggunakan sudo!"
  exit
fi

# Jalankan perintah
$RYZENADJ_PATH \
--tctl-temp=95 \
--apu-skin-temp=95 \
--stapm-limit=28000 \
--fast-limit=28000 \
--stapm-time=64 \
--slow-limit=28000 \
--slow-time=128 \
--vrm-current=180000 \
--vrmmax-current=180000 \
--vrmsoc-current=180000 \
--vrmsocmax-current=180000 \
--vrmgfx-current=180000 \
--max-performance

echo ""
echo "DONE! Profil AATU berhasil diterapkan."
read -p "Tekan Enter untuk keluar..."
