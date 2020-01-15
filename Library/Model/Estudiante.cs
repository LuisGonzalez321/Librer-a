using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class Estudiante {

        string NIE;
        string Nombres;
        string Apellidos;
        string user;
        string pass;

        public string NIE1 {
            get { return NIE;}
            set { this.NIE=value;}
        }

        public string Nombres1 {
            get {return Nombres;}
            set {this.Nombres=value;}
        }

        public string Apellidos1 {
            get {return Apellidos;}
            set {this.Apellidos=value;}
        }

        public string User {
            get {
                return user;
            }

            set {
                this.user=value;
            }
        }

        public string Pass {
            get {
                return pass;
            }

            set {
                this.pass=value;
            }
        }

        public Estudiante(string nIE, string nombres, string apellidos,string user) {
            this.NIE1=nIE;
            this.Nombres1=nombres;
            this.Apellidos1=apellidos;
            this.User=user;
        }

        public Estudiante(){}

        public bool InsertarEstudiante(Estudiante estudiante,char sección) {
            bool state;
            SqlConnection SqlCon = new SqlConnection();
            try {
                //Código
                SqlCon.ConnectionString=Connection.Cn;
                SqlCon.Open();
                //Establecer el Comando
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="InsertarEstudiante";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                // Parámetros del Procedimiento Almacenado

                SqlParameter ParCod = new SqlParameter();
                ParCod.ParameterName="@NIE";
                ParCod.SqlDbType=SqlDbType.VarChar;
                ParCod.Size=50;
                ParCod.Value=estudiante.NIE;
                SqlCmd.Parameters.Add(ParCod);

                SqlParameter ParNombre = new SqlParameter();
                ParNombre.ParameterName="@Nombres";
                ParNombre.SqlDbType=SqlDbType.VarChar;
                ParNombre.Size=50;
                ParNombre.Value=estudiante.Nombres;
                SqlCmd.Parameters.Add(ParNombre);

                SqlParameter ParApellidos = new SqlParameter();
                ParApellidos.ParameterName="@Apellidos";
                ParApellidos.SqlDbType=SqlDbType.VarChar;
                ParApellidos.Size=50;
                ParApellidos.Value=estudiante.Apellidos;
                SqlCmd.Parameters.Add(ParApellidos);

                SqlParameter ParEmail = new SqlParameter();
                ParEmail.ParameterName="@Email";
                ParEmail.SqlDbType=SqlDbType.VarChar;
                ParEmail.Size=50;
                ParEmail.Value=estudiante.user;
                SqlCmd.Parameters.Add(ParEmail);

                SqlParameter Parsección = new SqlParameter();
                Parsección.ParameterName="@Sección";
                Parsección.SqlDbType=SqlDbType.Char;
                Parsección.Size=10;
                Parsección.Value=sección;
                SqlCmd.Parameters.Add(Parsección);


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

        public DataTable  MostrarEstudiante(char Sección) {
            DataTable DtResultado = new DataTable();
            SqlConnection SqlCon = new SqlConnection();
            try {
                SqlCon.ConnectionString=Connection.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="MostrarEstudiante";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                SqlParameter ParCod = new SqlParameter();
                ParCod.ParameterName="@sección";
                ParCod.SqlDbType=SqlDbType.Char;
                ParCod.Size=10;
                ParCod.Value=Sección;
                SqlCmd.Parameters.Add(ParCod);
                                                                                      
                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);

            }
            catch (Exception ex) {
                DtResultado=null;
            }
            return DtResultado;
        }


    }
}