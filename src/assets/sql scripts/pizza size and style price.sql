select '{ name: '''+SizeName+''', price: ''$'+cast(price as varchar(max))+''' },'
from MenuItmSzXRef men
where men.ItemName = 'cheese pizza'
order by men.SizeName

declare @12inprice money

select @12inprice = men.price
from MenuItmSzXRef men
where men.ItemName = 'cheese pizza' and men.SizeName = '12in'
order by men.SizeName

select distinct '{ name: '''+men.StyleName+''', price: ''$'+cast((men.price+@12inprice) as varchar(max))+''' },'
from MenuGrpStySzXRef men
where (men.StyleName = 'deepdish' or men.StyleName = 'keto') and men.Price != -0.86

select distinct '{ name: '''+men.ItemName+''', price: ''$'+cast((men.price) as varchar(max))+''' },'
from MenuGrpItmXRef men
where men.GroupName = 'Calzones - Strombolis'





--{ name: 'Pep', price: '25.00' },