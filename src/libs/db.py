# 인구수_군구별(11-22).csv
population_gu_month = {
    'file_name':'인구수_군구별(11-22).csv',
    'table_name':'population_gu_month',
    'columns':'(gungu,dt,pop)'
}
# 인구수_시도별(11-22).csv
population_do_month = {
    'file_name':'인구수_시도별(11-22).csv',
    'table_name':'population_do_month',
    'columns':'(sido,dt,pop)'
}
# 일반폐기물재활용률(10-19).csv
normal_waste_recycle_ratio = {
    'file_name':'일반폐기물재활용률(10-19).csv',
    'table_name':'normal_waste_recycle_ratio',
    'columns':'(sido,sigungu,yr,recycle_ratio,total_recycle,total_waste)'
}
# 주민_1인당_생활폐기물배출량_시도_시_군(10-19).csv
life_waste_per_population = {
    'file_name':'주민_1인당_생활폐기물배출량_시도_시_군(10-19).csv',
    'table_name':'life_waste_per_population',
    'columns':'(district,sub_district,yr,life_waste_per_pop,life_waste,pop)'
}
# 지방자치단체_폐기물_처리시설_현황_매립시설(10-19).csv
municipality_waste_facility_landfill = {
    'file_name':'지방자치단체_폐기물_처리시설_현황_매립시설(10-19)_설치비통합.csv',
    'table_name':'municipality_waste_facility_landfill',
    'columns':'(region,landfill_cnt,total_area,total_landfill_capacity,landfill,landfill_rest,landfill_area,landfill_amount,maintenance_yr,manager_cnt,yr,install_cost)'
}
# 지방자치단체_폐기물_처리시설_현황_소각시설(10-19).csv
municipality_waste_facility_cremation = {
    'file_name':'지방자치단체_폐기물_처리시설_현황_소각시설(10-19)_설치비통합.csv',
    'table_name':'municipality_waste_facility_cremation',
    'columns':'(region,facility_cnt,capacity_daily,avg_working_daily,cremation_amount,maintenance_yr,manager_cnt,thermal_supply,electric_supply,own_use_thermal,own_use_electric,yr,install_cost)'
}
# 폐기물 재활용률(09-18).csv
waste_recycle_ratio = {
    'file_name':'폐기물 재활용률(09-18).csv',
    'table_name':'waste_recycle_ratio',
    'columns':'(region, district,category,yr,amount_per_day,recycled_per_day)'
}

# 폐기물 재활용실적 및 업체현황(10-19).csv
recycle_corp_state = {
    'file_name':'폐기물 재활용실적 및 업체현황(10-19).csv',
    'table_name':'recycle_corp_state',
    'columns':'(region,yr,waste_category,classification,corp_activated,amount_recycled_waste,sales,total_sales)'
}
# 폐기물_발생현황_생활계폐기물_생활폐기물_사업장생활계폐기물(10-19).csv
life_waste_occurence_status = {
    'file_name':'폐기물_발생현황_생활계폐기물_생활폐기물_사업장생활계폐기물(10-19).csv',
    'table_name':'life_waste_occurence_status',
    'columns':'(yr,ext_method,category,sub_category,region,amount)'
}
# 폐기물_처리주체별_처리현황_생활계폐기물_생활폐기물_사업장생활계폐기물(10-19).csv
waste_process_subject_status={
    'file_name':'폐기물_처리주체별_처리현황_생활계폐기물_생활폐기물_사업장생활계폐기물(10-19).csv',
    'table_name':'waste_process_subject_status',
    'columns':'(yr,subj,region,landfill,cremation,recycled)'
}