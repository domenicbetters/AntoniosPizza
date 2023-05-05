 select '{ "name": "'+itemname+'", "price": "$'+cast(price as varchar(10))+'"},' as 'size'
  FROM [revention].[dbo].[MenuGrpItmXRef]
  where itemname like '%wings%'



select '{ "name": "'+prefmembername+'"},'
  FROM [revention].[dbo].[MenuPrfMbrXRef]
  where prefname = 'wing sauce'


