
 select '{ name: '''+itemname+''', price:''$'+cast(price as varchar(max))+''' },'
  FROM [revention].[dbo].[MenuGrpItmXRef]
  where groupname = 'pasta'

  
 select '{ name: '''+itemname+''', price:''$'+cast(price as varchar(max))+''' },'
  FROM [revention].[dbo].[MenuGrpItmXRef]
  where groupname = 'desserts'

  
 select '{ name: '''+itemname+'''},'
  FROM [revention].[dbo].[MenuGrpItmXRef]
  where groupname = 'beverages'