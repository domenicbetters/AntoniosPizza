

select men.ModName into #tempy
from MenuGrpMdSzXRef men
where groupname = 'pizza' and SizeName = '12in' and price = 3.75
order by ModName

select * from #tempy



select distinct 
case
when men.modname = tem.modname
 then '{ name: '''+men.ModName+'*''},'
 else '{ name: '''+men.ModName+'''},'
end
from [dbo].[MenuGrpMdXRef] men
left join #tempy tem on tem.ModName = men.ModName
where GroupName = 'pizza' and MdCatKey = 47 and SyncStatus = 1

select distinct 
case
when men.modname = tem.modname
 then '{ name: '''+men.ModName+'*''},'
 else '{ name: '''+men.ModName+'''},'
end
from [dbo].[MenuGrpMdXRef] men
left join #tempy tem on tem.ModName = men.ModName
where GroupName = 'pizza' and MdCatKey = 50 and SyncStatus = 1

select distinct 
case
when men.modname = tem.modname
 then '{ name: '''+men.ModName+'*''},'
 else '{ name: '''+men.ModName+'''},'
end
from [dbo].[MenuGrpMdXRef] men
left join #tempy tem on tem.ModName = men.ModName
where GroupName = 'pizza' and MdCatKey = 49 and SyncStatus = 1

select distinct 
case
when men.modname = tem.modname
 then '{ name: '''+men.ModName+'*''},'
 else '{ name: '''+men.ModName+'''},'
end
from [dbo].[MenuGrpMdXRef] men
left join #tempy tem on tem.ModName = men.ModName
where GroupName = 'pizza' and MdCatKey = 51 and SyncStatus = 1

select distinct 
case
when men.modname = tem.modname
 then '{ name: '''+men.ModName+'*''},'
 else '{ name: '''+men.ModName+'''},'
end
from [dbo].[MenuGrpMdXRef] men
left join #tempy tem on tem.ModName = men.ModName
where GroupName = 'pizza' and MdCatKey = 48 and SyncStatus = 1

select distinct 
case
when men.modname = tem.modname
 then '{ name: '''+men.ModName+'*''},'
 else '{ name: '''+men.ModName+'''},'
end
from [dbo].[MenuGrpMdXRef] men
left join #tempy tem on tem.ModName = men.ModName
where GroupName = 'pizza' and MdCatKey not between 47 and 51 and SyncStatus = 1




drop table #tempy


--{ name: 'Veggies'}, meat = 47 veggies = 50 sauce = 48 cheese 49 vegan 51 