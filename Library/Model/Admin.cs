using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class Admin {

        private string contraseña;
        private string apellidos;
        private string nombre;
        private string teléfono;
        private string usuario;

        public Admin() {

        }

        public Admin(string nombre, string apellidos, string teléfono, string usuario, string contraseña) {
            this.nombre = nombre;
            this.apellidos = apellidos;
            this.teléfono = teléfono;
            this.usuario = usuario;
            this.contraseña = contraseña;
        }

        public string Apellidos
        {
            get {
                return apellidos;
            }

            set {
                apellidos = value;
            }
        }

        public string Nombre
        {
            get {
                return nombre;
            }

            set {
                nombre = value;
            }
        }

        public string Teléfono
        {
            get {
                return teléfono;
            }

            set {
                teléfono = value;
            }
        }

        public string Usuario
        {
            get {
                return usuario;
            }

            set {
                usuario = value;
            }
        }

        public string Contraseña
        {
            get {
                return contraseña;
            }

            set {
                contraseña = value;
            }
        }

        public string get_name(string rol,int id) {
            DataTable DtResultado = new DataTable();
            SqlConnection SqlCon = new SqlConnection();
            DataRow dr;
            string value = null;
            try {
                SqlCon.ConnectionString = Connection.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "ObtenerNombre";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter prol = new SqlParameter();
                prol.ParameterName = "@id";
                prol.SqlDbType = SqlDbType.Int;
                prol.Value = id;
                SqlCmd.Parameters.Add(prol);

                SqlParameter pro2 = new SqlParameter();
                pro2.ParameterName = "@rol";
                pro2.SqlDbType = SqlDbType.VarChar;
                pro2.Size = 50;
                pro2.Value = rol;
                SqlCmd.Parameters.Add(pro2);

                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);

                if (DtResultado.Rows.Count > 0) {
                    dr = DtResultado.Rows[0];
                    value = dr[0].ToString();
                    return value;
                    }

                } catch (Exception ex) {
                DtResultado = null;
                value = null;
                }
            return value;
            }

        public int Ingreso(string usuario, string contraseña,string rol){
            DataTable DtResultado = new DataTable();
            SqlConnection SqlCon = new SqlConnection();
            DataRow dr;
            int value =0;
            try
            {
                SqlCon.ConnectionString = Connection.Cn;
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection = SqlCon;
                SqlCmd.CommandText = "Ingreso_Usuario";
                SqlCmd.CommandType = CommandType.StoredProcedure;

                SqlParameter ParDato = new SqlParameter();
                ParDato.ParameterName = "@user";
                ParDato.SqlDbType = SqlDbType.VarChar;
                ParDato.Size = 100;
                ParDato.Value = usuario;
                SqlCmd.Parameters.Add(ParDato);

                SqlParameter ParDato1 = new SqlParameter();
                ParDato1.ParameterName = "@pass";
                ParDato1.SqlDbType = SqlDbType.VarChar;
                ParDato1.Size = 100;
                ParDato1.Value = contraseña;
                SqlCmd.Parameters.Add(ParDato1);

                SqlParameter prol = new SqlParameter();
                prol.ParameterName = "@rol";
                prol.SqlDbType = SqlDbType.VarChar;
                prol.Size = 50;
                prol.Value = rol;
                SqlCmd.Parameters.Add(prol);


                SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                SqlDat.Fill(DtResultado);

                if (DtResultado.Rows.Count > 0)
                {
                    dr = DtResultado.Rows[0];
                    value= Convert.ToInt32(dr[asignarAtributo(rol)].ToString());
                    return value;
                }

            }
            catch (Exception ex)
            {
                DtResultado = null;
                value = 0;
            }
            return value;

        }

        private string asignarAtributo(string value){
            string data = null;
            if (value == "Estudiante")
            {
                data = "IdEstudiante";
            }else if (value == "Docente")
            {
                data = "IdDocente";
            }else if(value == "Personal Administrativo")
            {
                data = "IdPersonalAdmin";
            }else if (value == "Administrador")
            {
                data = "IdAdmin";
            }
            return data;
        }


    }
}