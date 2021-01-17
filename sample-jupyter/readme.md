##Command Untuk SSH Tunneling

Setelah menjalankan job jupyter-job.sh dengan

sbatch jupyter-job.sh

Pada node yang dipilih akan berjalan jupyter notebook dengan menggunakan port 8888

Untuk mengakses jupyter pada node dari komputer lokal, harus dilakukan ssh tunneling. Jalankan command  berikut:

ssh -L 8889:127.0.0.1:8888 username@compute-node-ip

#compute-node-ip = 10.6.45.X
X adalah angka terakhir nama node (komputasi0X)
