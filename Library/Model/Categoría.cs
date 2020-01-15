using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class Categoría {

        string Nombre;
        string Cod_Categoría;

        public Categoría(){}

        public Categoría(string Nombre,string Cod_Categoría) {
            this.Nombre=Nombre;
            this.Cod_Categoría1=Cod_Categoría;
        }

        public string Nombre1 {
            get {
                return Nombre;
            }

            set {
                this.Nombre=value;
            }
        }

        public string Cod_Categoría1 {
            get {
                return Cod_Categoría;
            }

            set {
                this.Cod_Categoría=value;
            }
        }

        public bool InsertarDocente(Categoría categoría) {
            bool state;
            SqlConnection SqlCon = new SqlConnection();
            try {
                //Código
                SqlCon.ConnectionString=Connection.Cn;
                SqlCon.Open();
                //Establecer el Comando
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="InsertarCategoría";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                // Parámetros del Procedimiento Almacenado

                SqlParameter ParCod = new SqlParameter();
                ParCod.ParameterName="@Nombre";
                ParCod.SqlDbType=SqlDbType.VarChar;
                ParCod.Size=50;
                ParCod.Value=categoría.Nombre;
                SqlCmd.Parameters.Add(ParCod);

                SqlParameter ParCod2 = new SqlParameter();
                ParCod2.ParameterName="@Cod";
                ParCod2.SqlDbType=SqlDbType.VarChar;
                ParCod2.Size=50;
                ParCod2.Value=categoría.Nombre;
                SqlCmd.Parameters.Add(ParCod2);

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

        public DataTable MostrarDocente() {
            DataTable DtResultado = new DataTable();
            SqlConnection SqlCon = new SqlConnection();
            try {
                SqlCon.ConnectionString=Connection.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="MostrarCategoría";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);

            }
            catch (Exception ex) {
                DtResultado=null;
            }
            return DtResultado;
        }

        public DataTable MostrarListaCategoría() {
            DataTable DtResultado = new DataTable();
            SqlConnection SqlCon = new SqlConnection();
            try {
                SqlCon.ConnectionString=Connection.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="MostrarCategoría";
                SqlCmd.CommandType=CommandType.StoredProcedure;

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