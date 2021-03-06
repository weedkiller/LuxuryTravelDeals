
GO
CREATE VIEW [dbo].[HotelRoomMealRemark] AS
SELECT hp.HotelPriceId,
(case when mpm.BreakFast=1 and mpm.Lunch = 1 and mpm.Dinner=1 then 'Breakfast, Lunch and Dinner Included'
 when mpm.BreakFast=1 and mpm.Lunch = 1 then 'Breakfast and Lunch Included'
when mpm.BreakFast=1 and mpm.Dinner=1 then 'Breakfast and Dinner Included'
when mpm.Lunch = 1 and mpm.Dinner=1 then 'Lunch and Dinner Included'
when mpm.BreakFast=1 then 'Breakfast Included'
when mpm.Lunch=1 then 'Breakfast Included'
when mpm.Dinner=1 then 'Dinner Included'
else '' end) +'<br/>'+ [DBO].[RTF2TextWeb](Remarks) Remarks FROM HotelPrice hp left join HotelPriceDetail hpd on hp.HotelPriceId=hpd.HotelPriceId
left join MealPlanMaster mpm on hpd.MealPlanId=mpm.MealPlanId
GO
