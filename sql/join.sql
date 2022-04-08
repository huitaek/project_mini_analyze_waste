select lwpp_p.region as region,
       lwpp_p.yr     as yr,
       life_waste,
       life_waste_per_pop,
       pop,
       total_recycle,
       total_waste,
       recycle_ratio,
       ic_p.income   as income_indivisual,
       corp_activated,
       corp_recycled_waste,
       corp_sales_amount,
       corp_total_sales,
       total_amount_daily,
       total_recycled_daily,
       total_cremation
from (select lwpp.region,
             lwpp.yr,
             sum(lwpp.life_waste)         as life_waste,
             sum(lwpp.life_waste_per_pop) as life_waste_per_pop
      from life_waste_per_population as lwpp
      group by lwpp.region, lwpp.yr
      order by lwpp.yr)
         as lwpp_p
         join
     (select pdm.region, date_part('year', pdm.dt) as yr, pdm.pop
      from population_do_month as pdm
      where date_part('month', pdm.dt) = 1)
         as pdm_p on lwpp_p.region = pdm_p.region and lwpp_p.yr = pdm_p.yr
         join
     (select nwrr.region,
             nwrr.yr,
             sum(nwrr.total_recycle) as total_recycle,
             sum(nwrr.total_waste)   as total_waste,
             case
                 when sum(nwrr.total_waste) != 0 then (sum(nwrr.total_recycle) / sum(nwrr.total_waste)) * 100
                 else 0 end
                                     as recycle_ratio
      from normal_waste_recycle_ratio as nwrr
      group by nwrr.region, nwrr.yr) as nwrr_p on nwrr_p.region = lwpp_p.region and nwrr_p.yr = lwpp_p.yr
         join (select ic.region, ic.yr, ic.income from income as ic where category = '개인소득') as ic_p
              on ic_p.region = lwpp_p.region and ic_p.yr = lwpp_p.yr
         join (select rcs.region,
                      rcs.yr::INTEGER,
                      sum(rcs.corp_activated) as corp_activated,
                      sum(rcs.recycled_waste) as corp_recycled_waste,
                      sum(rcs.sales_amount)   as corp_sales_amount,
                      sum(rcs.total_sales)    as corp_total_sales
               from recycle_corp_state as rcs
               group by rcs.region, rcs.yr) as rcs_p on rcs_p.region = lwpp_p.region and rcs_p.yr = lwpp_p.yr
         join (select wrr.region,
                      wrr.yr,
                      sum(wrr.amount_daily)   as total_amount_daily,
                      sum(wrr.recycled_daily) as total_recycled_daily
               from waste_recycle_ratio as wrr
               group by wrr.region, wrr.yr) as wrr_p on wrr_p.region = lwpp_p.region and wrr_p.yr = lwpp_p.yr
         join (select wpss.region, wpss.yr, sum(wpss.cremation) as total_cremation
               from waste_process_subject_status as wpss
               group by wpss.region, wpss.yr) as wpss_p on wpss_p.region = lwpp_p.region and wpss_p.yr = lwpp_p.yr
order by yr, region;
