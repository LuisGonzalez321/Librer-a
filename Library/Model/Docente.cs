using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class Docente {

        int No_Dui;
        string Nombres;
        string Apellidos;
        string Teléfono;
        string Dirección;
        string Especialidad;
        string Turno;
        string sección;
        string Usuario;
        string Contraseña;

        public int No_Dui1 {
            get {return No_Dui;}
            set {No_Dui=value;}
        }

        public string Nombres1 {
            get {return Nombres;}
            set {Nombres=value;}
        }

        public string Apellidos1 {
            get {return Apellidos;}
            set {Apellidos=value;}
        }

        public string Teléfono1 {
            get {return Teléfono;}
            set {Teléfono=value;}
        }

        public string Dirección1 {
            get {return Dirección;}
            set {Dirección=value;}
        }

        public string Especialidad1 {
            get {return Especialidad;}
            set {Especialidad=value;}
        }

        public string Turno1 {
            get {return Turno;}
            set {Turno=value;}
        }

        public string Sección {
            get {return sección;}
            set {sección=value;}
        }

        public string Usuario1 {
            get {return Usuario;}
            set {Usuario=value;}
        }

        public string Contraseña1 {
            get { return Contraseña; }
            set {Contraseña=value;}
        }

        public Docente(){}

        public Docente(int No_Dui, string Nombres, string Apellidos, string Teléfono, string Dirección, string Especialidad, string Turno, string sección, string Usuario, string Contraseña) {
            this.No_Dui1=No_Dui;
            this.Nombres1=Nombres;
            this.Apellidos1=Apellidos;
            this.Teléfono1=Teléfono;
            this.Dirección1=Dirección;
            this.Especialidad1=Especialidad;
            this.Turno1=Turno;
            this.Sección=sección;
            this.Usuario1=Usuario;
            this.Contraseña1=Contraseña;
        }

       public DataTable MostrarDocente() {
            DataTable DtResultado = new DataTable();
            SqlConnection SqlCon = new SqlConnection();
            try {
                SqlCon.ConnectionString=Connection.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="MostrarDocente";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);

            }
            catch (Exception ex) {
                DtResultado=null;
            }
            return DtResultado;
        }

        public bool InsertarDocente(Docente docente) {
            bool state;
            SqlConnection SqlCon = new SqlConnection();
            try {
                //Código
                SqlCon.ConnectionString=Connection.Cn;
                SqlCon.Open();
                //Establecer el Comando
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="InsertarDocente";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                // Parámetros del Procedimiento Almacenado

                SqlParameter ParCod = new SqlParameter();
                ParCod.ParameterName="@No_DUI";
                ParCod.SqlDbType=SqlDbType.VarChar;
                ParCod.Size=50;
                ParCod.Value=docente.No_Dui;
                SqlCmd.Parameters.Add(ParCod);

                SqlParameter ParNombre = new SqlParameter();
                ParNombre.ParameterName="@Nombres";
                ParNombre.SqlDbType=SqlDbType.VarChar;
                ParNombre.Size=50;
                ParNombre.Value=docente.Nombres;
                SqlCmd.Parameters.Add(ParNombre);

                SqlParameter ParApellidos = new SqlParameter();
                ParApellidos.ParameterName="@Apellidos";
                ParApellidos.SqlDbType=SqlDbType.VarChar;
                ParApellidos.Size=50;
                ParApellidos.Value=docente.Apellidos;
                SqlCmd.Parameters.Add(ParApellidos);

                SqlParameter ParTeléfono = new SqlParameter();
                ParTeléfono.ParameterName="@Teléfono";
                ParTeléfono.SqlDbType=SqlDbType.VarChar;
                ParTeléfono.Size=20;
                ParTeléfono.Value=docente.Teléfono;
                SqlCmd.Parameters.Add(ParTeléfono);

                SqlParameter ParDirección = new SqlParameter();
                ParDirección.ParameterName="@Dirección";
                ParDirección.SqlDbType=SqlDbType.VarChar;
                ParDirección.Size=100;
                ParDirección.Value=docente.Dirección;
                SqlCmd.Parameters.Add(ParDirección);

                SqlParameter ParEspecialidad = new SqlParameter();
                ParEspecialidad.ParameterName="@Especialidad";
                ParEspecialidad.SqlDbType=SqlDbType.VarChar;
                ParEspecialidad.Size=100;
                ParEspecialidad.Value=docente.Especialidad;
                SqlCmd.Parameters.Add(ParEspecialidad);

                SqlParameter ParTurno = new SqlParameter();
                ParTurno.ParameterName="@Turno";
                ParTurno.SqlDbType=SqlDbType.VarChar;
                ParTurno.Size=50;
                ParTurno.Value=docente.Turno;
                SqlCmd.Parameters.Add(ParTurno);

                SqlParameter ParSección = new SqlParameter();
                ParSección.ParameterName="@Sección";
                ParSección.SqlDbType=SqlDbType.VarChar;
                ParSección.Size=50;
                ParSección.Value=docente.Sección;
                SqlCmd.Parameters.Add(ParSección);

                //Ejecutamos nuestro comando
                SqlCmd.ExecuteNonQuery();// == 1 ? "OK" : "NO se Ingreso el Registro";

                state=true;
            }
            catch (Exception ex) {
                state=false;
            } finally {
                if (SqlCon.State==ConnectionState.Open) SqlCon.Close();
            }
            return state;
        }



    }
}