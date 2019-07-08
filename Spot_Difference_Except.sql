SELECT
source_class_code,
'not in pm_type_details' AS note
FROM public.instr_class_to_source_class
EXCEPT
SELECT
source_class_code,
'not in pm_type_details' AS note
FROM arm_int2.source_class_details