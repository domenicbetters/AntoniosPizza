 select '{ name: '''+modname+'''},'
  FROM [revention].[dbo].[MenuGrpMdXRef]
  where mdcatkey = 6 and groupname = 'salads' and ModName !='no dressing'
