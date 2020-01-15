use Library;
/*
 Datos de instituci�n
     Cod_InfraEstructura
	 Nombre_Instituci�n
	 Distrito
	 Tel�fono
	 A�o

 Datos del Proveedor
     Nombre_Proveedor
	 Email
	 Direcci�n
	 Tel�fono
	 Responsable de Atenci�n

  Categoria
     Cod_Categoria
	 Nombre

Secci�n 
     A�o
	 Especialidad
	 Seccion

Administrador
   Nombre
   Nombre_User
   Email
   Constrase�a

Docente
   Numero_DUI
   Nombres
   Apellidos
   Tel�fono
   Especialidad
   Turno
   Secci�n

Estudiante
   NIE
   Nombres
   Apellidos
   Secci�n
     Encargado
	 N�mero de DUI Encargado
	 NombreCompleto
	 Tel�fono

PersonalAdministrativo 
   Numero_DUI
   Nombres
   Apellidos
   Tel�fono
   Cargo

 Libros
    Categoria
	C�digo_Correlativo
	T�tulo
	Autor
	Pa�s
	Proveedor
	A�o
	Editorial
	Edici�n
	Ejemplares
	Ubicaci�n
	Cargo
	Estimado
	Estado

Prestamos
  Cod_Prestamo
  Nombre_Libro
  Nombre_Usuario
  Tipo
  F.Solicitud
  Fecha_Entrega
  Estado

 Reservaci�n
  Cod_Prestamo
  Nombre_Libro
  Nombre_Usuario
  Tipo
  F.Solicitud
  Fecha_Entrega
  Aprobaci�n


*/

use Library
go

--/////////////////////////////////////////////
alter table Prestamo
drop column Multa

Create table LibrosVencidos
(
 IdLibroVencido int primary key identity(1,1),
 IdLibro int foreign key references Libro(IdLibro),
 Multa money
)
--////////////////////////////////////////////
select Usuario,Contrase�a from Admin where Usuario='' and Contrase�a=''


select * from Secci�n
insert into Secci�n(a�o,Especialidad,Secci�n) values('','','')
go

select * from Docente

alter table Docente 
add Usuario varchar(50),Contrase�a varchar(100)

select * from PersonalAdmin

alter table PersonalAdmin
add Usuario varchar(50),Contrase�a varchar(100)
go

create Procedure Ingreso_Usuario
@user varchar(100),
@pass varchar(100),
@rol varchar(50)
  as
if(@rol = 'Estudiante')
   select 
   IdEstudiante 
   from Estudiante where Usuario=@user and Contrase�a=@pass
else if(@rol = 'Docente')
   select 
   IdDocente
   from Docente where Usuario=@user and Contrase�a=@pass
else if(@rol = 'Personal Administrativo')
   select 
   IdPersonalAdmin
   from PersonalAdmin where Usuario=@user and Contrase�a=@pass
else if(@rol = 'Administrador')
   select 
   IdAdmin
   from Admin where Usuario=@user and Contrase�a=@pass
go

select * from Admin
select * from Estudiante
select * from Docente
select * from 

Execute Ingreso_Usuario 'Admin','L','Administrador'

--======================================================
go

Alter Procedure Contador
@value varchar(50)
  as
if(@value = 'ADMINISTRADORES')
   select count(*) from Admin
else if(@value = 'ESTUDIANTES')
   select count(*) from Estudiante
else if(@value = 'DOCENTES')
   select COUNT(*) from Docente
else if(@value = 'PERSONAL_ADMINISTRATIVO')
   select COUNT(*) from PersonalAdmin
else if(@value = 'PROVEEDORES')
   select count(*) from Proveedor
else if(@value = 'LIBROS')
   select count(*) from Libro
else if(@value = 'CATEGOR�AS')
   select count(*) from Categor�a
else if(@value = 'SECCIONES')
   select count(*) from Secci�n
else if(@value = 'RESERVACIONES')
   select count(*) from Reserva
else if(@value = 'DEVOLUCIONES_PENDIENTES')
   select count(*) from Prestamo where GETDATE()<FechaEntrega
else if(@value= 'PRESTAMOS')
   select COUNT(*) from Prestamo
go

exec Contador 'ADMINISTRADORES'

go

Create Procedure ObtenerNombre
 @id int,
 @rol varchar(50)
 as
if(@rol = 'Estudiante')
   select 
   Nombres
   from Estudiante es where IdEstudiante=@id
else if(@rol = 'Docente')
   select 
   Nombres
   from Docente where IdDocente=@id
else if(@rol = 'Personal Administrativo')
   select 
   Nombres
   from PersonalAdmin where IdPersonalAdmin=@id
else if(@rol = 'Administrador')
   select 
   Nombre
   from Admin where IdAdmin=@id
go

Execute ObtenerNombre 13,'Estudiante'

go

Create Procedure Insertar_Instituci�n
 @Cod_instituci�n int,
 @Nombre varchar(100),
 @Distrito varchar(50),
 @Tel�fono varchar(20),
 @A�o int
as
Insert into Instituci�n values(@Cod_instituci�n,@Nombre,@Distrito,@Tel�fono,@A�o)
go

Execute Insertar_Instituci�n 120,'UNI','2','90238923',2019

select * from PersonalAdmin
go

Create procedure Insertar_PersonalAdmin
 @No_DUI varchar(50),
 @Nombres varchar(50),
 @Apellidos varchar(50),
 @Tel�fono varchar(20),
 @Direcci�n varchar(100),
 @Cargo varchar(50)
    as
 declare @user varchar(50)=Upper(rtrim(@Nombres))
 declare @pass_default varchar(100)='12345678'
 Insert into PersonalAdmin values(@No_DUI,@Nombres,@Apellidos,@Tel�fono,@Direcci�n,@Cargo,@user,@pass_default)

 declare @id int = (select top(1) IdPersonalAdmin from PersonalAdmin order by IdPersonalAdmin desc)
 Insert into Admin_Insti values(@id,1)
 go

Alter Procedure Mostrar_PersonalAdmin
   as
 select 
   IdPersonalAdmin,
   pa.No_DUI,
   pa.Apellidos,
   pa.Nombres,
   pa.Tel�fono,
   pa.Direcci�n,
   pa.Cargo
   from PersonalAdmin pa
go

Create Procedure InsertarDocente
 @No_DUI varchar(50),
 @Nombres varchar(50),
 @Apellidos varchar(50),
 @Tel�fono varchar(20),
 @Direcci�n varchar(100),
 @Especialidad varchar(100),
 @Turno varchar(50),
 @Secci�n varchar(50)
    as
 declare @user varchar(50)=Upper(rtrim(@Nombres))
 declare @pass_default varchar(100)='12345678'
 declare @IdSecci�n int=(select top(1) s.IdSecci�n from Secci�n s where s.Secci�n=@Secci�n)

 Insert into Docente values(@No_DUI,@Nombres,@Apellidos,@Tel�fono,@Direcci�n,@Especialidad,@Turno,@user,@pass_default)

 declare @id int = (select top(1) IdDocente from Docente order by IdDocente desc)
 Insert into Docentes_Instituci�n(IdInstituci�n,IdDocente) values(1,@id)
 Insert into Docente_Secci�n(IdDocente,IdSecci�n) values(@id,@IdSecci�n)
 go

 Create procedure MostrarDocente
  as
select 
  d.IdDocente,
  d.No_DUI,
  s.Secci�n,
  d.Apellidos,
  d.Nombres,
  d.Tel�fono
  from Docente d
  inner join Docente_Secci�n ds on ds.IdDocente=d.IdDocente
  inner join Secci�n s on ds.IdSecci�n=s.IdSecci�n
go

Alter Procedure InsertarEstudiante
@NIE varchar(50),
@Nombres varchar(50),
@Apellidos varchar(50),
@Email varchar(50),
@Secci�n char(10)
  as
 if not exists(select user from Estudiante where Usuario=@Email)
   begin
		 declare @pass_default nvarchar(50)='12345678'
		 Insert into Estudiante values(@NIE,@Nombres,@Apellidos,@Email,@pass_default,null)

		 declare @IdEstudiante int=(select top(1) IdEstudiante from Estudiante order by IdEstudiante desc)
		 declare @IdSecci�n int =(select IdSecci�n from Secci�n where Secci�n=@Secci�n)

		 Insert into Alumnos values(@IdEstudiante,@IdSecci�n)
   end
 else 
   begin 
         select 'Email ya registrado'
   end
go

Create Procedure InsertarEncargado
@DUI varchar(50),
@NombreE varchar(50),
@ApellidoE varchar(50),
@Tel�fono varchar(20),
@Parentesco varchar(50)
 as
declare @IdEstudiante int=(select top(1) IdEstudiante from Estudiante order by IdEstudiante desc)

Insert into Encargado values(@DUI,@NombreE,@ApellidoE,@Tel�fono,@IdEstudiante,@Parentesco)
go

select * from Estudiante
select * from Alumnos
select * from Encargado
go

Create procedure MostrarEstudiante
 @secci�n char(10)
as
select 
    e.IdEstudiante,
	e.NIE,
	e.Apellidos,
	e.Nombres,
	s.Secci�n
from Estudiante e
inner join Alumnos a on e.IdEstudiante=a.IdEstudiante
inner join Secci�n s on a.IdSecci�n=s.IdSecci�n
where s.Secci�n=@secci�n
go

--//////////////////////////////////////////////////////////////////////////////
Alter table Reservaci�n
drop column Nombre_Usuario

Alter table Reservaci�n
add constraint CK_Aprobaci�n
check (Aprobaci�n='Aprobada' or Aprobaci�n='Reprobada' or Aprobaci�n='En Espera')
--//////////////////////////////////////////////////////////////////////////////
go

Create procedure InsertarReservacion
 @Cod_Reservaci�n int,
 @NombreLibro varchar(50),
 @IdEstudiante int
   as

declare @IdLibro int= (select IdLibro from Libro where T�tulo=@NombreLibro)
declare @Usuario int=(select Usuario from Estudiante where IdEstudiante=@IdEstudiante)

Insert into Reservaci�n values(@Cod_Reservaci�n,@NombreLibro,null,getdate(),'En Espera')

declare @IdReserva int=(select top(1) IdReservaci�n from Reservaci�n order by IdReservaci�n desc)

Insert into ReservaEstudiante(IdReserva,IdEstudiante) values(@IdReserva,@IdEstudiante)
go

select l.T�tulo from Libro l

---////
 alter table Prestamo
 drop column Nombre_Usuario
---////

Create procedure InsertarPrestamo
@CodPrestamo varchar(50),
@NombreLibro varchar(50),
@IdEstudiante int
  as
declare @fechaVencimiento varchar(50)=Convert(varchar(50),Year(getdate()))+'-'+Convert(varchar(50),Month(getdate())+1)+'-'+Convert(varchar(50),Day(getdate()))
declare @fecha date=Convert(date,@fechaVencimiento)

print ''+@fechaVencimiento

Insert into Prestamo values(@CodPrestamo,@NombreLibro,null,GETDATE(),@fecha,'Aprobado')

--//////////////////////

create procedure MostrarCategor�a
 as
select c.Nombre from Categor�a c
go
--//////////////////////////////////

create procedure InsertarCategor�a
 @Nombre varchar(50),
 @Cod varchar(50)
as
  Insert into Categor�a(Nombre,Cod_Categor�a) values(@Nombre,@Cod)
go
--//
create procedure MostrarProveedor
as
select 
  p.IdProveedor,
  p.Nombre_Proveedor,
  p.Email,
  p.Direcci�n,
  p.Tel�fono from Proveedor p
go

Create Procedure MostrarListaProveedor
as 
 select Nombre_Proveedor from Proveedor
go
--//

Create Procedure InsertarProveedor
@Nombre_Proveedor varchar(50),
@Email varchar(50),
@Direcci�n varchar(100),
@Tel�fono varchar(50),
@Id int
 as
Insert into Proveedor values(@Nombre_Proveedor,@Email,@Direcci�n,@Tel�fono,@Id)
go

select * from Proveedor

--//
alter Procedure MostrarPersonal
@Id int
 as
select Nombres+' '+Apellidos as Nombre from PersonalAdmin pa where IdPersonalAdmin=@Id
go

MostrarPersonal 1

select * from Estudiante
select * from Encargado
select * from Alumnos
delete from Estudiante where IdEstudiante=15
delete from Encargado where IdEncargado=4
delete from Alumnos where IdEstudiante=15

execute ObtenerNombre 1 ,'Personal Administrativo'

select * from PersonalAdmin
go
--///////

create procedure MostrarCategor�a
 as
select c.Nombre from Categor�a c
go

--/////////////

Create procedure InsertarLibro
@Categor�a varchar(50),
@Cod_Correlativo varchar(50),
@T�tulo varchar(50),
@Autor varchar(50),
@Pa�s varchar(50),
@Proveedor varchar(50),
@A�o int,
@Editorial varchar(50),
@Edici�n varchar(50),
@Ejemplares int,
@Ubicaci�n varchar(50),
@Cargo varchar(50),
@Estimado money,
@Estado varchar(50)
as
  declare @IdCategor�a int=(select IdCategor�� from Categor�a where Nombre=@Categor�a)
  declare @IdProveedor int=(select IdProveedor from Proveedor where Nombre_Proveedor=@Proveedor)

  Insert into Libro values
  (
	@IdCategor�a,@Cod_Correlativo,@T�tulo,@Autor,
	@Pa�s,@IdProveedor,@A�o,@Editorial,@Edici�n,
	@Ejemplares,@Ubicaci�n,@Cargo,@Estimado,@Estado
  )
go

select * from Libro
select * from PersonalAdmin

SELECT * from Estudiante
go

Create Procedure MostrarLibro
as
 select * from Libro
go

SELECT * FROM Admin