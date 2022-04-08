create table population_gu_month (
    district   varchar(30),
    dt    date,
    pop int  
);
create table population_do_month (
    region   varchar(25),
    dt    date,
    pop int   
);
create table normal_waste_recycle_ratio (
    region    varchar(25),
    district varchar(30),
    yr    int,
    recycle_ratio   float,
    total_recycle   float,
    total_waste    float
);
create table life_waste_per_population(
    region varchar(25),
    district varchar(30),
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
    reclaimed int,
    landfill_spare int,
    reclaimed_area int,
    reclaimed_amount int,
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
    thermal_own_use int,
    electric_own_use int,
    yr int,
    install_cost int
);
create table waste_recycle_ratio(
    region varchar(25), 
    district varchar(30),
    category varchar(35),
    yr int,
    amount_daily float,
    recycled_daily float
);
create table recycle_corp_state(
    region varchar(20),
    yr varchar(4),
    waste_category varchar(50),
    classification varchar(30),
    corp_activated integer,
    recycled_waste integer,
    sales_amount integer,
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
    reclaimed float,
    cremation float,
    recycled float
);
create table nationwide_recycle_center(
    center_name varchar(100),
    adrs varchar(120),
    lat float,
    long float,
    area float,
    car_hold int,
    subject_treat varchar(150),
    management_corp varchar(100)
);