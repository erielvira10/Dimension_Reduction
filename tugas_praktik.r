library(openxlsx)
df_raw <- read.xlsx("file", sheet = "3varb")
#Tampilkan struktur data 
str(df_raw)
#Tampilkan beberapa baris observasi dengan fungsi head()
head(df_raw)
#Lakukan analisa PCA dengan fungsi prcomp() dan
#simpan output ke dalam obyek dengan nama pr.out
pr.out <- prcomp(df_raw, center = TRUE, scale = TRUE, retx = TRUE)
#Tampilkan komponen output fungsi prcomp()
names(pr.out)
#Tampilkan output PCA dengan memanggil obyek pr.out
pr.out
#Tampilkan summary dari output PCA
summary(pr.out)
#Gambarkan Screeplot dengan menggunakan fungsi screeplot()
#Tambahkan garis horizontal sebagai panduan untuk menggunakan kriteria Kaiser
screeplot(pr.out, type = "line")
abline(h = 1, col = "red", lty = 3)
#Gambarkan biplot dengan menggunakan fungsi biplot()
#Gunakan opsi scale = 0 agar panjang vektor sesuai dengan kontribusi variabel.
biplot(pr.out, scale = 0)
