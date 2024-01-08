 select '{ "name": "'+itemname+'", "price": "$'+cast(price as varchar(10))+'", "vegan": "yes"},' as 'size'
  FROM [revention].[dbo].[MenuGrpItmXRef]
  where GroupName = 'Bubble Drinks'