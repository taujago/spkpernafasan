ALTER TABLE `pengguna` CHANGE `username` `email` VARCHAR(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL;
ALTER TABLE `pengguna` ADD `kd_pasien` VARCHAR(20) NULL AFTER `id`;
