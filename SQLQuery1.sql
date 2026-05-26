<<<<<<< HEAD


create function GetSinglValue(@flag int,@id int)
returns nvarchar(MAX)
as
begin
declare @value nvarchar(Max)
if(@flag=1)
begin
select @value=category from Tbl_Category where cat_id=@id and is_del='false'
end
return @value
end

=======


create function GetSinglValue(@flag int,@id int)
returns nvarchar(MAX)
as
begin
declare @value nvarchar(Max)
if(@flag=1)
begin
select @value=category from Tbl_Category where cat_id=@id and is_del='false'
end
return @value
end

>>>>>>> 55c7a8c460464ebc7b8089e3b967921b66e1e1f5
