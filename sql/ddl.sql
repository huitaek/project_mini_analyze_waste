create table recycle_corp_state(
    region varchar(20),
    year varchar(4),
    waste_category varchar(50),
    classification varchar(30),
    corp_activated integer,
    amount_recycled_waste integer,
    sales integer,
    total_sales integer
);


# 인구수_군구별(11-22)
create table population_gungu_month (
    gungu   varchar(100),
    date_    date,
    people   varchar(100)  
);

#인구수_군구별(연별)(11-22)
create table population_gungu_year (
    gungu   varchar(100),
    year    int,
    people   varchar(100)  
);

#인구수_시도별(11-22)
create table population_sido_month (
    sido   varchar(100),
    date_    date,
    people   varchar(100)  
);

#인구수_시도별(연별)(11-22)
create table population_sido_year (
    sido   varchar(100),
    year    int,
    people   varchar(100)  
);

#일반폐기물재활용률(10-19)
create table population_sido_year (
    sido    varchar(100),
    sigungu varchar(100),
    year    int,
    recycle_ratio   int,
    all_recycle   int,
    all_life    int
);

