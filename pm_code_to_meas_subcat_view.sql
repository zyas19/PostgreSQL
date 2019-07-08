CREATE VIEW pm_code_to_meas_subcat AS
SELECT DISTINCT a.primary_meas_type_code, b.meas_category_code
FROM arm_int2.datastream_var_name_info a
INNER JOIN arm_int2.datastream_var_name_meas_cats b
ON a.datastream = b.datastream
UNION
SELECT DISTINCT a.primary_meas_code, b.meas_subcategory_code
FROM iop.primmeas a
INNER JOIN iop.meascats b
ON a.iopno = b.iopno
UNION
SELECT DISTINCT a.primary_meas_code, b.meas_subcategory_code
FROM pip.primmeas a
INNER JOIN pip.meascats b
ON a.pipno = b.pipno