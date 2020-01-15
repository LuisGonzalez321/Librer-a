using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class Proveedor {

        string Nombre_Proveedor;
        string Email;
        string Dirección;
        string Teléfono;

        public string Nombre_Proveedor1 {
            get {
                return Nombre_Proveedor;
            }

            set {
                this.Nombre_Proveedor=value;
            }
        }

        public string Email1 {
            get {
                return Email;
            }

            set {
                this.Email=value;
            }
        }

        public string Dirección1 {
            get {
                return Dirección;
            }

            set {
                this.Dirección=value;
            }
        }

        public string Teléfono1 {
            get {
                return Teléfono;
            }

            set {
                this.Teléfono=value;
            }
        }

        public Proveedor() { }

        public Proveedor(string nombre_Proveedor, string email, string dirección, string teléfono) {
            this.Nombre_Proveedor1=nombre_Proveedor;
            this.Email1=email;
            this.Dirección1=dirección;
            this.Teléfono1=teléfono;
        }

        public bool InsertarProveedor(Proveedor proveedor, int Id) {
            bool state;
            SqlConnection SqlCon = new SqlConnection();
            try {
                //Código
                SqlCon.ConnectionString=Connection.Cn;
                SqlCon.Open();
                //Establecer el Comando
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="InsertarProveedor";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                // Parámetros del Procedimiento Almacenado

                SqlParameter NombreProveedor = new SqlParameter();
                NombreProveedor.ParameterName="@Nombre_Proveedor";
                NombreProveedor.SqlDbType=SqlDbType.VarChar;
                NombreProveedor.Size=50;
                NombreProveedor.Value=proveedor.Nombre_Proveedor;
                SqlCmd.Parameters.Add(NombreProveedor);

                SqlParameter ParEmail = new SqlParameter();
                ParEmail.ParameterName="@Email";
                ParEmail.SqlDbType=SqlDbType.VarChar;
                ParEmail.Size=50;
                ParEmail.Value=proveedor.Email;
                SqlCmd.Parameters.Add(ParEmail);

                SqlParameter ParDirección = new SqlParameter();
                ParDirección.ParameterName="@Dirección";
                ParDirección.SqlDbType=SqlDbType.VarChar;
                ParDirección.Size=100;
                ParDirección.Value=proveedor.Dirección;
                SqlCmd.Parameters.Add(ParDirección);

                SqlParameter ParTeléfono = new SqlParameter();
                ParTeléfono.ParameterName="@Teléfono";
                ParTeléfono.SqlDbType=SqlDbType.Char;
                ParTeléfono.Size=50;
                ParTeléfono.Value=proveedor.Teléfono; ;
                SqlCmd.Parameters.Add(ParTeléfono);

                SqlParameter ParId = new SqlParameter();
                ParId.ParameterName="@Id";
                ParId.SqlDbType=SqlDbType.Int;
                ParId.Value=Id;
                SqlCmd.Parameters.Add(ParId);

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

        public DataTable MostrarProveedor() {
            DataTable DtResultado = new DataTable();
            SqlConnection SqlCon = new SqlConnection();
            try {
                SqlCon.ConnectionString=Connection.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="MostrarProveedor";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);



            }
            catch (Exception ex) {
                DtResultado=null;
            }
            return DtResultado;
        }

        public DataTable MostrarListaProveedor() {
            DataTable DtResultado = new DataTable();
            SqlConnection SqlCon = new SqlConnection();
            try {
                SqlCon.ConnectionString=Connection.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="MostrarListaProveedor";
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