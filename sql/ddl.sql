create table population_gu_month (
    gungu   varchar(30),
    dt    date,
    pop int  
);
create table population_do_month (
    sido   varchar(25),
    dt    date,
    pop int   
);
create table normal_waste_recycle_ratio (
    sido    varchar(25),
    sigungu varchar(30),
    yr    int,
    recycle_ratio   float,
    total_recycle   float,
    total_waste    float
);
create table life_waste_per_population(
    district varchar(30),
    sub_district varchar(25),
    yr int,
    life_waste_per_pop float,
    life_waste float,
    pop int
);
create table municipality_waste_facility_landfill(
    region varchar(20),
    landfill_cnt int,
    total_area int,
    total_landfill_capacity int,
    landfill int,
    landfill_rest int,
    landfill_area int,
    landfill_amount int,
    maintenance_yr int,
    manager_cnt int,
    yr int,
    install_cost int
);
create table municipality_waste_facility_cremation(
    region varchar(20),
    facility_cnt int,
    capacity_daily int,
    avg_working_daily int,
    cremation_amount int,
    maintenance_yr int,
    manager_cnt int,
    thermal_supply int,
    electric_supply int,
    own_use_thermal int,
    own_use_electric int,
    yr int,
    install_cost int
);
create table waste_recycle_ratio(
    region varchar(20), 
    district varchar(25),
    category varchar(30),
    yr int,
    amount_per_day float,
    recycled_per_day float
);
create table recycle_corp_state(
    region varchar(20),
    yr varchar(4),
    waste_category varchar(50),
    classification varchar(30),
    corp_activated integer,
    amount_recycled_waste integer,
    sales integer,
    total_sales integer
);
create table life_waste_occurence_status(
    yr int,
    ext_method varchar(50),
    category varchar(30),
    sub_category varchar(30),
    region varchar(20),
    amount float
);

create table waste_process_subject_status(
    yr int,
    subj varchar(16),
    region varchar(20),
    landfill float,
    cremation float,
    recycled float
);
create table nationwide_recycle_center(
    cnterNm varchar(100),
    rdnmadr varchar(120),
    latitude float,
    longitude float,
    ar float,
    carHoldCo int,
    trtmntPrdlst varchar(150),
    institutionNm varchar(100)
);