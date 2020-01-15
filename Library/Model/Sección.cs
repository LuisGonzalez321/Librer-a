using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class Sección {

        int año;
        string especialidad;
        char sección;

        public int Año {
            get {return año;}
            set {año=value;}
        }

        public string Especialidad {
            get {return especialidad;}
            set { especialidad=value;}
        }

        public char sección1 {
            get {return sección;}
            set {sección=value;}
        }

        public Sección(int año, string especialidad, char sección) {
            this.Año=año;
            this.Especialidad=especialidad;
            this.sección=sección;
        }

        public Sección() { }

        public bool InsertarSección(Sección section) {
            bool state;
            SqlConnection SqlCon = new SqlConnection();
            try {
                //Código
                SqlCon.ConnectionString=Connection.Cn;
                SqlCon.Open();
                //Establecer el Comando
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="InsertarSección";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                // Parámetros del Procedimiento Almacenado

                SqlParameter ParAño = new SqlParameter();
                ParAño.ParameterName="@Año";
                ParAño.SqlDbType=SqlDbType.Int;
                ParAño.Value=section.Año;
                SqlCmd.Parameters.Add(ParAño);

                SqlParameter ParEspecialidad = new SqlParameter();
                ParEspecialidad.ParameterName="@Especialidad";
                ParEspecialidad.SqlDbType=SqlDbType.VarChar;
                ParEspecialidad.Size=50;
                ParEspecialidad.Value=section.Especialidad;
                SqlCmd.Parameters.Add(ParEspecialidad);

                SqlParameter ParApellidos = new SqlParameter();
                ParApellidos.ParameterName="@Sección";
                ParApellidos.SqlDbType=SqlDbType.Char;
                ParApellidos.Size=50;
                ParApellidos.Value=section.sección;
                SqlCmd.Parameters.Add(ParApellidos);

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