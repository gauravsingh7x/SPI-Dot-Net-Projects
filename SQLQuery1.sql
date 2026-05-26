

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

