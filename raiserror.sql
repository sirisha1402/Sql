--Raiserror
Begin try
Declare @A as int =10;
select @A/0
end try 
Begin catch
declare @EM as Nvarchar(4000);
declare @Esev as int;
declare @Est as int;
select @Em = error_message(), @Esev = error_severity(), @Est= error_state();
raiserror (@Em,@Esev,@Est)
end catch
--Throw
Begin try
Declare @A as int =10;
select @A/0
end try 
begin catch
throw;
end catch

