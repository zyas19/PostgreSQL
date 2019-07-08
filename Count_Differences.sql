SELECT
COUNT(*)
FROM
pip.primmeas
FULL OUTER JOIN arm_int2.pm_code_to_instr_class 
ON pip.primmeas.primary_meas_code = arm_int2.pm_code_to_instr_class.primary_meas_type_code
WHERE pip.primmeas.primary_meas_code IS NULL
OR arm_int2.pm_code_to_instr_class.primary_meas_type_code IS NULL
 