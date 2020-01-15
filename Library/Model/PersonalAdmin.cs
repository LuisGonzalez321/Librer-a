using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class PersonalAdmin {

        string No_DUI;
        string Nombres;
        string Apellidos;
        string Teléfono;
        string Dirección;
        string Cargo;
        string Usuario;
        string Contraseña;

        public string No_DUI1 {
            get {return No_DUI;}
            set{ No_DUI=value;}
        }

        public string Nombres1 {
            get{ return Nombres; }
            set{ Nombres=value;}
        }

        public string Apellidos1 {
            get{ return Apellidos;}
            set{ Apellidos=value;}
        }

        public string Teléfono1 {
            get{ return Teléfono;}
            set{ Teléfono=value;}
        }

        public string Dirección1 {
            get{ return Dirección;}
            set{ Dirección=value;}
        }

        public string Cargo1 {
            get{ return Cargo;}
            set{ Cargo=value;}
        }

        public string Usuario1 {
            get{ return Usuario;}
            set{ Usuario=value;}
        }

        public string Contraseña1 {
            get{ return Contraseña;}
            set{ Contraseña=value;}
        }

        public PersonalAdmin(){}

        public PersonalAdmin(string no_DUI, string nombres, string apellidos, string teléfono, string dirección, string Cargo, string usuario, string contraseña) {
            No_DUI=no_DUI;
            Nombres=nombres;
            Apellidos=apellidos;
            Teléfono=teléfono;
            Dirección=dirección;
            this.Cargo=Cargo;
            Usuario=usuario;
            Contraseña=contraseña;
        }

        public bool Insertar(PersonalAdmin personal) {
            bool state;
            SqlConnection SqlCon = new SqlConnection();
            try {
                //Código
                SqlCon.ConnectionString=Connection.Cn;
                SqlCon.Open();
                //Establecer el Comando
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="Insertar_PersonalAdmin";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                // Parámetros del Procedimiento Almacenado

                SqlParameter ParCod = new SqlParameter();
                ParCod.ParameterName="@No_DUI";
                ParCod.SqlDbType=SqlDbType.VarChar;
                ParCod.Size=50;
                ParCod.Value=personal.No_DUI;
                SqlCmd.Parameters.Add(ParCod);

                SqlParameter ParNombre = new SqlParameter();
                ParNombre.ParameterName="@Nombres";
                ParNombre.SqlDbType=SqlDbType.VarChar;
                ParNombre.Size=50;
                ParNombre.Value=personal.Nombres;
                SqlCmd.Parameters.Add(ParNombre);

                SqlParameter ParApellidos = new SqlParameter();
                ParApellidos.ParameterName="@Apellidos";
                ParApellidos.SqlDbType=SqlDbType.VarChar;
                ParApellidos.Size=50;
                ParApellidos.Value=personal.Apellidos;
                SqlCmd.Parameters.Add(ParApellidos);

                SqlParameter ParTeléfono = new SqlParameter();
                ParTeléfono.ParameterName="@Teléfono";
                ParTeléfono.SqlDbType=SqlDbType.VarChar;
                ParTeléfono.Size=20;
                ParTeléfono.Value=personal.Teléfono;
                SqlCmd.Parameters.Add(ParTeléfono);

                SqlParameter ParDirección = new SqlParameter();
                ParDirección.ParameterName="@Dirección";
                ParDirección.SqlDbType=SqlDbType.VarChar;
                ParDirección.Size=100;
                ParDirección.Value=personal.Dirección;
                SqlCmd.Parameters.Add(ParDirección);

                SqlParameter ParCargo = new SqlParameter();
                ParCargo.ParameterName="@Cargo";
                ParCargo.SqlDbType=SqlDbType.VarChar;
                ParCargo.Size=50;
                ParCargo.Value=personal.Cargo;
                SqlCmd.Parameters.Add(ParCargo);

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

        public DataTable Mostrar() {
            DataTable DtResultado = new DataTable();
            SqlConnection SqlCon = new SqlConnection();
            try {
                SqlCon.ConnectionString=Connection.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="Mostrar_PersonalAdmin";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);

            }
            catch (Exception ex) {
                DtResultado=null;
            }
            return DtResultado;

        }

        public string MostrarPersonal(int Id) {
            DataTable DtResultado = new DataTable();
            SqlConnection SqlCon = new SqlConnection();
            DataRow dr;
            string value = null;
            try {
                SqlCon.ConnectionString=Connection.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="MostrarPersonal";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                SqlParameter ParCod = new SqlParameter();
                ParCod.ParameterName="@Id";
                ParCod.SqlDbType=SqlDbType.Int;
                ParCod.Value=Id;
                SqlCmd.Parameters.Add(ParCod);

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);

                if (DtResultado.Rows.Count>0) {
                    dr=DtResultado.Rows[0];
                    value=dr["Nombre"].ToString();
                    return value;
                }

            }
            catch (Exception ex) {
                value=null;
            }
            return value;

        }

    }
}