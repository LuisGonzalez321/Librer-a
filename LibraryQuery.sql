use Library;
/*
 Datos de institución
     Cod_InfraEstructura
	 Nombre_Institución
	 Distrito
	 Teléfono
	 Año

 Datos del Proveedor
     Nombre_Proveedor
	 Email
	 Dirección
	 Teléfono
	 Responsable de Atención

  Categoria
     Cod_Categoria
	 Nombre

Sección 
     Año
	 Especialidad
	 Seccion

Administrador
   Nombre
   Nombre_User
   Email
   Constraseña

Docente
   Numero_DUI
   Nombres
   Apellidos
   Teléfono
   Especialidad
   Turno
   Sección

Estudiante
   NIE
   Nombres
   Apellidos
   Sección
     Encargado
	 Número de DUI Encargado
	 NombreCompleto
	 Teléfono

PersonalAdministrativo 
   Numero_DUI
   Nombres
   Apellidos
   Teléfono
   Cargo

 Libros
    Categoria
	Código_Correlativo
	Título
	Autor
	País
	Proveedor
	Año
	Editorial
	Edición
	Ejemplares
	Ubicación
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

 Reservación
  Cod_Prestamo
  Nombre_Libro
  Nombre_Usuario
  Tipo
  F.Solicitud
  Fecha_Entrega
  Aprobación


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
select Usuario,Contraseña from Admin where Usuario='' and Contraseña=''


select * from Sección
insert into Sección(año,Especialidad,Sección) values('','','')
go

select * from Docente

alter table Docente 
add Usuario varchar(50),Contraseña varchar(100)

select * from PersonalAdmin

alter table PersonalAdmin
add Usuario varchar(50),Contraseña varchar(100)
go

create Procedure Ingreso_Usuario
@user varchar(100),
@pass varchar(100),
@rol varchar(50)
  as
if(@rol = 'Estudiante')
   select 
   IdEstudiante 
   from Estudiante where Usuario=@user and Contraseña=@pass
else if(@rol = 'Docente')
   select 
   IdDocente
   from Docente where Usuario=@user and Contraseña=@pass
else if(@rol = 'Personal Administrativo')
   select 
   IdPersonalAdmin
   from PersonalAdmin where Usuario=@user and Contraseña=@pass
else if(@rol = 'Administrador')
   select 
   IdAdmin
   from Admin where Usuario=@user and Contraseña=@pass
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
else if(@value = 'CATEGORÍAS')
   select count(*) from Categoría
else if(@value = 'SECCIONES')
   select count(*) from Sección
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

Create Procedure Insertar_Institución
 @Cod_institución int,
 @Nombre varchar(100),
 @Distrito varchar(50),
 @Teléfono varchar(20),
 @Año int
as
Insert into Institución values(@Cod_institución,@Nombre,@Distrito,@Teléfono,@Año)
go

Execute Insertar_Institución 120,'UNI','2','90238923',2019

select * from PersonalAdmin
go

Create procedure Insertar_PersonalAdmin
 @No_DUI varchar(50),
 @Nombres varchar(50),
 @Apellidos varchar(50),
 @Teléfono varchar(20),
 @Dirección varchar(100),
 @Cargo varchar(50)
    as
 declare @user varchar(50)=Upper(rtrim(@Nombres))
 declare @pass_default varchar(100)='12345678'
 Insert into PersonalAdmin values(@No_DUI,@Nombres,@Apellidos,@Teléfono,@Dirección,@Cargo,@user,@pass_default)

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
   pa.Teléfono,
   pa.Dirección,
   pa.Cargo
   from PersonalAdmin pa
go

Create Procedure InsertarDocente
 @No_DUI varchar(50),
 @Nombres varchar(50),
 @Apellidos varchar(50),
 @Teléfono varchar(20),
 @Dirección varchar(100),
 @Especialidad varchar(100),
 @Turno varchar(50),
 @Sección varchar(50)
    as
 declare @user varchar(50)=Upper(rtrim(@Nombres))
 declare @pass_default varchar(100)='12345678'
 declare @IdSección int=(select top(1) s.IdSección from Sección s where s.Sección=@Sección)

 Insert into Docente values(@No_DUI,@Nombres,@Apellidos,@Teléfono,@Dirección,@Especialidad,@Turno,@user,@pass_default)

 declare @id int = (select top(1) IdDocente from Docente order by IdDocente desc)
 Insert into Docentes_Institución(IdInstitución,IdDocente) values(1,@id)
 Insert into Docente_Sección(IdDocente,IdSección) values(@id,@IdSección)
 go

 Create procedure MostrarDocente
  as
select 
  d.IdDocente,
  d.No_DUI,
  s.Sección,
  d.Apellidos,
  d.Nombres,
  d.Teléfono
  from Docente d
  inner join Docente_Sección ds on ds.IdDocente=d.IdDocente
  inner join Sección s on ds.IdSección=s.IdSección
go

Alter Procedure InsertarEstudiante
@NIE varchar(50),
@Nombres varchar(50),
@Apellidos varchar(50),
@Email varchar(50),
@Sección char(10)
  as
 if not exists(select user from Estudiante where Usuario=@Email)
   begin
		 declare @pass_default nvarchar(50)='12345678'
		 Insert into Estudiante values(@NIE,@Nombres,@Apellidos,@Email,@pass_default,null)

		 declare @IdEstudiante int=(select top(1) IdEstudiante from Estudiante order by IdEstudiante desc)
		 declare @IdSección int =(select IdSección from Sección where Sección=@Sección)

		 Insert into Alumnos values(@IdEstudiante,@IdSección)
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
@Teléfono varchar(20),
@Parentesco varchar(50)
 as
declare @IdEstudiante int=(select top(1) IdEstudiante from Estudiante order by IdEstudiante desc)

Insert into Encargado values(@DUI,@NombreE,@ApellidoE,@Teléfono,@IdEstudiante,@Parentesco)
go

select * from Estudiante
select * from Alumnos
select * from Encargado
go

Create procedure MostrarEstudiante
 @sección char(10)
as
select 
    e.IdEstudiante,
	e.NIE,
	e.Apellidos,
	e.Nombres,
	s.Sección
from Estudiante e
inner join Alumnos a on e.IdEstudiante=a.IdEstudiante
inner join Sección s on a.IdSección=s.IdSección
where s.Sección=@sección
go

--//////////////////////////////////////////////////////////////////////////////
Alter table Reservación
drop column Nombre_Usuario

Alter table Reservación
add constraint CK_Aprobación
check (Aprobación='Aprobada' or Aprobación='Reprobada' or Aprobación='En Espera')
--//////////////////////////////////////////////////////////////////////////////
go

Create procedure InsertarReservacion
 @Cod_Reservación int,
 @NombreLibro varchar(50),
 @IdEstudiante int
   as

declare @IdLibro int= (select IdLibro from Libro where Título=@NombreLibro)
declare @Usuario int=(select Usuario from Estudiante where IdEstudiante=@IdEstudiante)

Insert into Reservación values(@Cod_Reservación,@NombreLibro,null,getdate(),'En Espera')

declare @IdReserva int=(select top(1) IdReservación from Reservación order by IdReservación desc)

Insert into ReservaEstudiante(IdReserva,IdEstudiante) values(@IdReserva,@IdEstudiante)
go

select l.Título from Libro l

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

create procedure MostrarCategoría
 as
select c.Nombre from Categoría c
go
--//////////////////////////////////

create procedure InsertarCategoría
 @Nombre varchar(50),
 @Cod varchar(50)
as
  Insert into Categoría(Nombre,Cod_Categoría) values(@Nombre,@Cod)
go
--//
create procedure MostrarProveedor
as
select 
  p.IdProveedor,
  p.Nombre_Proveedor,
  p.Email,
  p.Dirección,
  p.Teléfono from Proveedor p
go

Create Procedure MostrarListaProveedor
as 
 select Nombre_Proveedor from Proveedor
go
--//

Create Procedure InsertarProveedor
@Nombre_Proveedor varchar(50),
@Email varchar(50),
@Dirección varchar(100),
@Teléfono varchar(50),
@Id int
 as
Insert into Proveedor values(@Nombre_Proveedor,@Email,@Dirección,@Teléfono,@Id)
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

create procedure MostrarCategoría
 as
select c.Nombre from Categoría c
go

--/////////////

Create procedure InsertarLibro
@Categoría varchar(50),
@Cod_Correlativo varchar(50),
@Título varchar(50),
@Autor varchar(50),
@País varchar(50),
@Proveedor varchar(50),
@Año int,
@Editorial varchar(50),
@Edición varchar(50),
@Ejemplares int,
@Ubicación varchar(50),
@Cargo varchar(50),
@Estimado money,
@Estado varchar(50)
as
  declare @IdCategoría int=(select IdCategoríá from Categoría where Nombre=@Categoría)
  declare @IdProveedor int=(select IdProveedor from Proveedor where Nombre_Proveedor=@Proveedor)

  Insert into Libro values
  (
	@IdCategoría,@Cod_Correlativo,@Título,@Autor,
	@País,@IdProveedor,@Año,@Editorial,@Edición,
	@Ejemplares,@Ubicación,@Cargo,@Estimado,@Estado
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