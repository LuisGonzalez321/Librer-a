using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class Encargado {

        string Parentesco;
        string DUI;
        string NombreE;
        string ApellidoE;
        string Telefono;

        public string Parentesco1 {
            get {
                return Parentesco;
            }

            set {
                this.Parentesco=value;
            }
        }

        public string DUI1 {
            get {
                return DUI;
            }

            set {
                this.DUI=value;
            }
        }

        public string NombreE1 {
            get {
                return NombreE;
            }

            set {
                this.NombreE=value;
            }
        }

        public string ApellidoE1 {
            get {
                return ApellidoE;
            }

            set {
                this.ApellidoE=value;
            }
        }

        public string Telefono1 {
            get {
                return Telefono;
            }

            set {
                this.Telefono=value;
            }
        }

        public Encargado(){}

        public Encargado(string parentesco, string dUI, string nombreE, string apellidoE, string telefono) {
            this.Parentesco=parentesco;
            this.DUI=dUI;
            this.NombreE=nombreE;
            this.ApellidoE=apellidoE;
            this.Telefono=telefono;
        }

        public bool InsertarEncargado(Encargado encargado) {
            bool state;
            SqlConnection SqlCon = new SqlConnection();
            try {
                //Código
                SqlCon.ConnectionString=Connection.Cn;
                SqlCon.Open();
                //Establecer el Comando
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="InsertarEncargado";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                // Parámetros del Procedimiento Almacenado

                SqlParameter ParCod = new SqlParameter();
                ParCod.ParameterName="@DUI";
                ParCod.SqlDbType=SqlDbType.VarChar;
                ParCod.Size=50;
                ParCod.Value=encargado.DUI;
                SqlCmd.Parameters.Add(ParCod);

                SqlParameter ParNombre = new SqlParameter();
                ParNombre.ParameterName="@NombreE";
                ParNombre.SqlDbType=SqlDbType.VarChar;
                ParNombre.Size=50;
                ParNombre.Value=encargado.NombreE;
                SqlCmd.Parameters.Add(ParNombre);

                SqlParameter ParApellidos = new SqlParameter();
                ParApellidos.ParameterName="@ApellidoE";
                ParApellidos.SqlDbType=SqlDbType.VarChar;
                ParApellidos.Size=50;
                ParApellidos.Value=encargado.ApellidoE;
                SqlCmd.Parameters.Add(ParApellidos);

                SqlParameter ParTelefono = new SqlParameter();
                ParTelefono.ParameterName="@Teléfono";
                ParTelefono.SqlDbType=SqlDbType.VarChar;
                ParTelefono.Size=20;
                ParTelefono.Value=encargado.Telefono;
                SqlCmd.Parameters.Add(ParTelefono);

                SqlParameter ParPar = new SqlParameter();
                ParPar.ParameterName="@Parentesco";
                ParPar.SqlDbType=SqlDbType.VarChar;
                ParPar.Size=50;
                ParPar.Value=encargado.Parentesco;
                SqlCmd.Parameters.Add(ParPar);

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