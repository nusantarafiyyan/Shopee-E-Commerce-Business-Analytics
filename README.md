# 📊 Analisis Performa Penjualan Produk E-Commerce (Shopee Sales Analysis)

## 📌 Deskripsi Proyek

Proyek ini bertujuan untuk menganalisis faktor-faktor utama yang mempengaruhi performa penjualan produk pada platform e-commerce. Analisis difokuskan pada hubungan antara harga, diskon, rating, dan kategori produk terhadap jumlah penjualan dan revenue.

Melalui pendekatan berbasis data, proyek ini diharapkan dapat memberikan insight yang dapat digunakan untuk mendukung pengambilan keputusan bisnis, khususnya dalam strategi pricing, promosi, dan optimasi produk.

---

## 🎯 Tujuan Analisis

* Mengidentifikasi faktor utama yang mempengaruhi jumlah penjualan produk
* Menganalisis pengaruh harga terhadap performa penjualan
* Mengevaluasi dampak diskon terhadap peningkatan penjualan
* Mengetahui peran rating dalam keputusan pembelian
* Mengidentifikasi kategori produk dengan performa terbaik

---

## ❓ Business Questions

1. Apakah harga yang lebih rendah meningkatkan jumlah penjualan?
2. Seberapa besar pengaruh diskon terhadap performa penjualan?
3. Apakah rating produk berpengaruh signifikan terhadap penjualan?
4. Kategori produk apa yang memiliki performa terbaik?
5. Strategi apa yang dapat meningkatkan revenue secara optimal?

---

## 🛠️ Tools & Teknologi

* **Python (Google Colab)** → Data cleaning, eksplorasi, dan analisis
* **MySQL** → Pengolahan dan query data
* **Tableau** → Visualisasi data dan dashboard interaktif

---

## 🧹 Data Preparation

Langkah-langkah yang dilakukan:

* Menghapus kolom yang tidak relevan (ID, link, deskripsi panjang)
* Menangani missing values menggunakan median dan default value
* Menghapus data duplikat
* Menangani outlier menggunakan metode IQR

---

## ⚙️ Feature Engineering

Beberapa fitur tambahan yang dibuat:

* **Discount Percentage (%)**
  Untuk mengukur besarnya diskon yang diberikan
* **Revenue (Estimasi)**
  Menghitung potensi pendapatan dari produk
* **Price Category**
  Segmentasi produk berdasarkan harga:

  * Low
  * Medium
  * High

---

## 📊 Exploratory Data Analysis (EDA)

Analisis dilakukan untuk memahami pola dan hubungan antar variabel:

* Distribusi harga dan penjualan
* Hubungan harga vs jumlah terjual
* Pengaruh rating terhadap penjualan
* Analisis kategori produk
* Pengaruh diskon terhadap performa

---

## 🔍 Insight Utama

### 💰 Harga vs Penjualan

Produk dengan harga lebih rendah cenderung memiliki volume penjualan yang lebih tinggi dibandingkan produk dengan harga tinggi.

---

### 🎯 Diskon vs Penjualan

Produk dengan tingkat diskon tertentu menunjukkan peningkatan penjualan, terutama pada rentang diskon menengah.

---

### ⭐ Rating vs Penjualan

Rating memiliki pengaruh terhadap penjualan, namun tidak menjadi faktor utama dibandingkan harga dan diskon.

---

### 🛍️ Kategori Produk

Beberapa kategori produk mendominasi penjualan dan berkontribusi besar terhadap total revenue.

---

## 🧪 Validasi Hipotesis

Beberapa hipotesis diuji, antara lain:

* Harga rendah meningkatkan penjualan → **Terbukti**
* Diskon tinggi meningkatkan penjualan → **Terbukti dengan batas optimal**
* Rating tinggi meningkatkan penjualan → **Berpengaruh, namun tidak dominan**

---

## 📈 Key Metrics

* Total Revenue (Estimasi)
* Total Produk Terjual
* Rata-rata Rating Produk
* Distribusi Penjualan per Kategori

---

## 💡 Rekomendasi Bisnis

Berdasarkan hasil analisis, berikut rekomendasi yang dapat diterapkan:

1. **Optimasi Strategi Harga**

   * Fokus pada produk dengan harga low–medium
   * Hindari harga terlalu tinggi tanpa value tambahan

2. **Strategi Diskon yang Efektif**

   * Terapkan diskon pada level optimal (tidak terlalu kecil/tidak terlalu besar)
   * Gunakan diskon sebagai pendorong konversi

3. **Prioritaskan Kategori Potensial**

   * Fokus pada kategori dengan kontribusi penjualan tertinggi
   * Optimalkan stok dan promosi pada kategori tersebut

4. **Tingkatkan Kualitas Produk**

   * Meskipun bukan faktor utama, rating tetap mempengaruhi kepercayaan pelanggan

---

## 📊 Dashboard (Tableau)

*(Tambahkan link Tableau Public di sini jika sudah ada)*

Dashboard interaktif menampilkan:

* Overview performa penjualan
* Analisis harga vs penjualan
* Distribusi kategori produk
* Insight berbasis visual

---

## 🚀 Kesimpulan

Harga dan strategi diskon merupakan faktor utama yang mempengaruhi performa penjualan produk di e-commerce. Dengan mengoptimalkan kedua aspek tersebut serta fokus pada kategori produk yang tepat, bisnis dapat meningkatkan revenue secara signifikan.

---

## 👤 Author

**Rizky Faza Hafiyyan Nusantara**
Aspiring Business / Data Analyst
