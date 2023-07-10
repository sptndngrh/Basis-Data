create table jenis_pengiriman_via_kontainer (
    lokasi varchar(20),
    layanan varchar(20),
    kapasitas_min_Kg varchar(20),
    tarif_Rp_per_Kg varchar(20));

create table jenis_pengiriman_via_kapal_laut (
    lokasi varchar(20),
    layanan varchar(20),
    kapasitas_min_Kg varchar(20),
    tarif_Rp_per_Kg varchar(20));

create table jenis_pengiriman_via_pesawat (
    lokasi varchar(20),
    layanan varchar(20),
    kapasitas_min_Kg varchar(20),
    tarif_Rp_per_Kg varchar(20));

create table jenis_pengiriman_via_truck (
    lokasi varchar(20),
    layanan varchar(20),
    kapasitas_min_Kg varchar(20),
    tarif_Rp_per_Kg varchar(20));

insert into jenis_pengiriman_via_kontainer (lokasi, layanan, kapasitas_min_Kg, tarif_Rp_per_Kg)
    values ('DKI Jakarta', 'Reguler', 1, 14.000),
    ('DKI Jakarta', 'Seller', 10, 8.000),
    ('DKI Jakarta', 'Ekspress', 1, 17.500),
    ('Banten', 'Reguler', 1, 14.000),
    ('Banten', 'Seller', 10, 8.000),
    ('Banten', 'Ekspress', 1, 17.500),
    ('Jawa Barat', 'Reguler', 1, 14.000),
    ('Jawa Barat', 'Seller', 10, 8.000),
    ('Jawa Barat', 'Eskpress', 1, 17.500),
    ('Jawa Tengah', 'Reguler', 1, 14.000),
    ('Jawa Tengah', 'Seller', 10, 8.000),
    ('Jawa Tengah', 'Ekspress', 1, 17.500),
    ('DI Yogyakarta', 'Reguler', 1, 14.000),
    ('DI Yogyakarta', 'Seller', 10, 8.000),
    ('DI Yogyakarta', 'Ekspress', 1, 17.500),
    ('Jawa Timur', 'Reguler', 1, 14.000),
    ('Jawa Timur', 'Seller', 10, 8.000),
    ('Jawa Timur', 'Ekspress', 1, 17.500),
    ('Bali', 'Reguler', 1, 15.000),
    ('Bali', 'Seller', 10, 9.000),
    ('Bali', 'Ekspress', 1, 18.500);

insert into jenis_pengiriman_via_kapal_laut (lokasi, layanan, kapasitas_min_Kg, tarif_Rp_per_Kg)
    values ('I/N', 'Reguler', 1, 9.000),
    ('I/N', 'Seller', 4.999, 6.500),
    ('I/N', 'Biggest', 23.999, 5.000),
    ('I/N', 'Container', 24.000, 8.000);

insert into jenis_pengiriman_via_pesawat (lokasi, layanan, kapasitas_min_Kg, tarif_Rp_per_Kg)
    values ('I/N', 'Reguler', 1, 18.500);

insert into jenis_pengiriman_via_truck (lokasi, layanan, kapasitas_min_Kg, tarif_Rp_per_Kg)
    values ('DKI Jakarta', 'Reguler', 1, 17.000),
    ('DKI Jakarta', 'Seller', 10, 9.000),
    ('DKI Jakarta', 'Ekspress', 1, 20.500),
    ('Banten', 'Reguler', 1, 14.000),
    ('Banten', 'Seller', 10, 7.000),
    ('Banten', 'Ekspress', 1, 15.500),
    ('Jawa Barat', 'Reguler', 1, 14.000),
    ('Jawa Barat', 'Seller', 10, 8.000),
    ('Jawa Barat', 'Eskpress', 1, 16.500),
    ('Jawa Tengah', 'Reguler', 1, 13.000),
    ('Jawa Tengah', 'Seller', 10, 6.000),
    ('Jawa Tengah', 'Ekspress', 1, 14.500),
    ('DI Yogyakarta', 'Reguler', 1, 15.000),
    ('DI Yogyakarta', 'Seller', 10, 7.500),
    ('DI Yogyakarta', 'Ekspress', 1, 16.500),
    ('Jawa Timur', 'Reguler', 1, 17.000),
    ('Jawa Timur', 'Seller', 10, 9.000),
    ('Jawa Timur', 'Ekspress', 1, 19.500),
    ('Bali', 'Reguler', 1, 21.000),
    ('Bali', 'Seller', 10, 10.000),
    ('Bali', 'Ekspress', 1, 24.500);
