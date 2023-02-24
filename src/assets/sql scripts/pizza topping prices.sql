select distinct '{ name: '''+SizeName+''', price:''$'+cast(price as varchar(max))+''' },' 
from MenuGrpMdSzXRef
where GroupName = 'pizza' and ModName = 'pepperoni'