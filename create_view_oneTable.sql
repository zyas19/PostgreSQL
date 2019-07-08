CREATE VIEW arm_int2_info_view (instrument_class,  source_class, datastream)
AS SELECT instrument_class_code, source_class_code, datastream
FROM arm_int2.datastream_info;
