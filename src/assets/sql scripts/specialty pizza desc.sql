declare @toppings varchar(max)
declare @pizzaname varchar(max)
create table #toppings (pizza varchar(max),  toppings varchar(max))
create table #pizzas (itemname varchar(max))



insert into #pizzas select distinct itemname
from [dbo].[MenuItmPSMdXRef]
where groupname = 'pizza' and SyncStatus = 1 and entid > 200  and itemname != 'cheese pizza'

declare pizzacursor cursor
for
select piz.itemname
from #pizzas piz

open pizzacursor

fetch next from pizzacursor into
@pizzaname
while @@fetch_status = 0
    begin
			select @toppings = coalesce(@toppings + ', ', '') + ModName
		from [dbo].[MenuItmPSMdXRef]
		where groupname = 'pizza' and SyncStatus = 1 and entid > 200 and  ItemName = @pizzaname

		print @pizzaname
		print @toppings

        insert into #toppings (pizza, toppings) values (@pizzaname, @toppings  )

		set @toppings = null

        fetch next from pizzacursor into
        @pizzaname;
        end;

		
        close pizzacursor;
        deallocate pizzacursor;
		

		--{ name: 'Calzone', desc: 'Cheese, sauce Ricotta' },

select '{ name: '''+pizza+''', desc: '''+toppings+''' },'
from #toppings

drop table #toppings
drop table #pizzas