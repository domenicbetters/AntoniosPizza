 select '{ name: '''+itemname+''', price:''$'+cast(price as varchar(max))+''' },'
  FROM [revention].[dbo].[MenuGrpItmXRef]
  where groupname = 'appetizers'
  order by itemname