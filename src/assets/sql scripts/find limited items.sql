 select '{ "name": "'+itemname+'", "price": "$'+cast(price as varchar(10))+'"},' as 'size'
  FROM [revention].[dbo].[MenuGrpItmXRef]
  where EntSync >= DATEADD("d",-12, getdate())

  select DATEADD("d",-12, getdate())