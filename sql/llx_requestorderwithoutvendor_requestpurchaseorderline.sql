-- Copyright (C) 2023 SuperAdmin
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see https://www.gnu.org/licenses/.


CREATE TABLE llx_requestorderwithoutvendor_requestpurchaseorderline(
	-- BEGIN MODULEBUILDER FIELDS
	rowid integer AUTO_INCREMENT PRIMARY KEY NOT NULL, 
	ref varchar(128) NOT NULL, 
	label varchar(255), 
	qty real, 
	fk_project integer, 
	description text, 
	note_public text, 
	note_private text, 
	date_creation datetime NOT NULL, 
	tms timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
	fk_user_creat integer NOT NULL, 
	fk_user_modif integer, 
	last_main_doc varchar(255), 
	import_key varchar(14), 
	model_pdf varchar(255), 
	price integer, 
	fk_product integer NOT NULL, 
	subprice double(24,8), 
	remise_percent real, 
	total_ht double(24,8), 
	total_tva double(24,8), 
	total_ttc double(24,8), 
	total_localtax1 double(24,8), 
	total_localtax2 double(24,8), 
	tva_tx double(7,4), 
	localtax1_tx double(7,4), 
	localtax2_tx double(7,4), 
	localtax1_type varchar(10), 
	localtax2_type varchar(10), 
	info_bits integer, 
	product_type integer, 
	multicurrency_total_ht double(24,8), 
	multicurrency_total_tva double(24,8), 
	multicurrency_total_ttc double(24,8), 
	remise real, 
	fk_requestpurchaseorder integer NOT NULL
	-- END MODULEBUILDER FIELDS
) ENGINE=innodb;