using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class Institución {

        int Cod_institución;
        string Nombre;
        string Distrito;
        string Teléfono;
        int Año;

        public int Cod_institución1 {
            get {
                return Cod_institución;
            }

            set {
                Cod_institución=value;
            }
        }

        public string Nombre1 {
            get {
                return Nombre;
            }

            set {
                Nombre=value;
            }
        }

        public string Distrito1 {
            get {
                return Distrito;
            }

            set {
                Distrito=value;
            }
        }

        public string Teléfono1 {
            get {
                return Teléfono;
            }

            set {
                Teléfono=value;
            }
        }

        public int Año1 {
            get {
                return Año;
            }

            set {
                Año=value;
            }
        }

        public Institución(){}

        public Institución(int cod_institución, string nombre, string distrito, string teléfono, int año) {
            Cod_institución=cod_institución;
            Nombre=nombre;
            Distrito=distrito;
            Teléfono=teléfono;
            Año=año;
        }


        public bool Insertar(Institución institución) {
            bool state;
            SqlConnection SqlCon = new SqlConnection();
            try {
                //Código
                SqlCon.ConnectionString=Connection.Cn;
                SqlCon.Open();
                //Establecer el Comando
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="Insertar_Institución";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                // Parámetros del Procedimiento Almacenado

                SqlParameter ParCod = new SqlParameter();
                ParCod.ParameterName="@Cod_institución";
                ParCod.SqlDbType=SqlDbType.Int;
                ParCod.Value=institución.Cod_institución;
                SqlCmd.Parameters.Add(ParCod);

                SqlParameter ParNombre = new SqlParameter();
                ParNombre.ParameterName="@Nombre";
                ParNombre.SqlDbType=SqlDbType.VarChar;
                ParNombre.Size=100;
                ParNombre.Value=institución.Nombre;
                SqlCmd.Parameters.Add(ParNombre);

                SqlParameter ParDistrito = new SqlParameter();
                ParDistrito.ParameterName="@Distrito";
                ParDistrito.SqlDbType=SqlDbType.VarChar;
                ParDistrito.Size=50;
                ParDistrito.Value=institución.Distrito;
                SqlCmd.Parameters.Add(ParDistrito);

                SqlParameter ParTeléfono = new SqlParameter();
                ParTeléfono.ParameterName="@Teléfono";
                ParTeléfono.SqlDbType=SqlDbType.VarChar;
                ParTeléfono.Size=20;
                ParTeléfono.Value=institución.Teléfono;
                SqlCmd.Parameters.Add(ParTeléfono);

                SqlParameter ParAño = new SqlParameter();
                ParAño.ParameterName="@Año";
                ParAño.SqlDbType=SqlDbType.Int;
                ParAño.Value=institución.Año ;
                SqlCmd.Parameters.Add(ParAño);

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