using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class Libro {

        string Categoría;
        string Cod_Correlativo;
        string Título;
        string Autor;
        string País;
        string proveedor;
        int Año;
        string Editorial;
        string Edición;
        int Ejemplares;
        string Ubicación;
        string Cargo;
        double Estimado;
        string Estado;

        public string Categoría1 {
            get {
                return Categoría;
            }

            set {
                this.Categoría=value;
            }
        }

        public string Cod_Correlativo1 {
            get {
                return Cod_Correlativo;
            }

            set {
                this.Cod_Correlativo=value;
            }
        }

        public string Título1 {
            get {
                return Título;
            }

            set {
                this.Título=value;
            }
        }

        public string Autor1 {
            get {
                return Autor;
            }

            set {
                this.Autor=value;
            }
        }

        public string País1 {
            get {
                return País;
            }

            set {
                this.País=value;
            }
        }

        public string Proveedor {
            get {
                return proveedor;
            }

            set {
                this.proveedor=value;
            }
        }

        public int Año1 {
            get {
                return Año;
            }

            set {
                this.Año=value;
            }
        }

        public string Editorial1 {
            get {
                return Editorial;
            }

            set {
                this.Editorial=value;
            }
        }

        public string Edición1 {
            get {
                return Edición;
            }

            set {
                this.Edición=value;
            }
        }

        public int Ejemplares1 {
            get {
                return Ejemplares;
            }

            set {
                this.Ejemplares=value;
            }
        }

        public string Ubicación1 {
            get {
                return Ubicación;
            }

            set {
                this.Ubicación=value;
            }
        }

        public string Cargo1 {
            get {
                return Cargo;
            }

            set {
                this.Cargo=value;
            }
        }

        public double Estimado1 {
            get {
                return Estimado;
            }

            set {
                this.Estimado=value;
            }
        }

        public string Estado1 {
            get {
                return Estado;
            }

            set {
                this.Estado=value;
            }
        }

        public Libro(){}

        public Libro(string categoría, string cod_Correlativo, string título, string autor, string país, string proveedor, int año, string editorial, string edición, int ejemplares, string ubicación, string cargo, double estimado, string estado) {
            this.Categoría1=categoría;
            this.Cod_Correlativo1=cod_Correlativo;
            this.Título1=título;
            this.Autor1=autor;
            this.País1=país;
            this.Proveedor=proveedor;
            this.Año1=año;
            this.Editorial1=editorial;
            this.Edición1=edición;
            this.Ejemplares1=ejemplares;
            this.Ubicación1=ubicación;
            this.Cargo1=cargo;
            this.Estimado1=estimado;
            this.Estado1=estado;
        }


        public bool InsertarLibro(Libro libro) {
            bool state;
            SqlConnection SqlCon = new SqlConnection();
            try {
                //Código
                SqlCon.ConnectionString=Connection.Cn;
                SqlCon.Open();
                //Establecer el Comando
                SqlCommand SqlCmd = new SqlCommand();
                SqlCmd.Connection=SqlCon;
                SqlCmd.CommandText="InsertarLibro";
                SqlCmd.CommandType=CommandType.StoredProcedure;

                // Parámetros del Procedimiento Almacenado

                SqlParameter ParCategoría = new SqlParameter();
                ParCategoría.ParameterName="@Categoría";
                ParCategoría.SqlDbType=SqlDbType.VarChar;
                ParCategoría.Size=50;
                ParCategoría.Value=libro.Categoría;
                SqlCmd.Parameters.Add(ParCategoría);

                SqlParameter ParCod = new SqlParameter();
                ParCod.ParameterName="@Cod_Correlativo";
                ParCod.SqlDbType=SqlDbType.VarChar;
                ParCod.Size=50;
                ParCod.Value=libro.Cod_Correlativo;
                SqlCmd.Parameters.Add(ParCod);

                SqlParameter ParTítulo = new SqlParameter();
                ParTítulo.ParameterName="@Título";
                ParTítulo.SqlDbType=SqlDbType.VarChar;
                ParTítulo.Size=50;
                ParTítulo.Value=libro.Título;
                SqlCmd.Parameters.Add(ParTítulo);

                SqlParameter ParAutor = new SqlParameter();
                ParAutor.ParameterName="@Autor";
                ParAutor.SqlDbType=SqlDbType.VarChar;
                ParAutor.Size=50;
                ParAutor.Value=libro.Autor;
                SqlCmd.Parameters.Add(ParAutor);

                SqlParameter ParPaís = new SqlParameter();
                ParPaís.ParameterName="@País";
                ParPaís.SqlDbType=SqlDbType.VarChar;
                ParPaís.Size=50;
                ParPaís.Value=libro.País;
                SqlCmd.Parameters.Add(ParPaís);

                SqlParameter ParProveedor = new SqlParameter();
                ParProveedor.ParameterName="@Proveedor";
                ParProveedor.SqlDbType=SqlDbType.VarChar;
                ParProveedor.Size=50;
                ParProveedor.Value=libro.proveedor;
                SqlCmd.Parameters.Add(ParProveedor);

                SqlParameter ParAño = new SqlParameter();
                ParAño.ParameterName="@Año";
                ParAño.SqlDbType=SqlDbType.Int;
                ParAño.Value=libro.Año;
                SqlCmd.Parameters.Add(ParAño);

                SqlParameter ParEditorial = new SqlParameter();
                ParEditorial.ParameterName="@Editorial";
                ParEditorial.SqlDbType=SqlDbType.VarChar;
                ParEditorial.Size=50;
                ParEditorial.Value=libro.Editorial;
                SqlCmd.Parameters.Add(ParEditorial);

                SqlParameter ParEdición = new SqlParameter();
                ParEdición.ParameterName="@Edición";
                ParEdición.SqlDbType=SqlDbType.VarChar;
                ParEdición.Size=50;
                ParEdición.Value=libro.Edición;
                SqlCmd.Parameters.Add(ParEdición);

                SqlParameter ParEjemplares = new SqlParameter();
                ParEjemplares.ParameterName="@Ejemplares";
                ParEjemplares.SqlDbType=SqlDbType.Int;
                ParEjemplares.Value=libro.Ejemplares;
                SqlCmd.Parameters.Add(ParEjemplares);

                SqlParameter ParUbicación = new SqlParameter();
                ParUbicación.ParameterName="@Ubicación";
                ParUbicación.SqlDbType=SqlDbType.VarChar;
                ParUbicación.Size=50;
                ParUbicación.Value=libro.Ubicación;
                SqlCmd.Parameters.Add(ParUbicación);

                SqlParameter ParCargo = new SqlParameter();
                ParCargo.ParameterName="@Cargo";
                ParCargo.SqlDbType=SqlDbType.VarChar;
                ParCargo.Size=50;
                ParCargo.Value=libro.Cargo;
                SqlCmd.Parameters.Add(ParCargo);

                SqlParameter ParEstimado = new SqlParameter();
                ParEstimado.ParameterName="@Estimado";
                ParEstimado.SqlDbType=SqlDbType.Money;
                ParEstimado.Value=libro.Estimado;
                SqlCmd.Parameters.Add(ParEstimado);

                SqlParameter ParEstado = new SqlParameter();
                ParEstado.ParameterName="@Estado";
                ParEstado.SqlDbType=SqlDbType.VarChar;
                ParEstado.Size=50;
                ParEstado.Value=libro.Estado;
                SqlCmd.Parameters.Add(ParEstado);

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

        //public DataRow MostrarLibro(string atributo) { 
        //    DataTable DtResultado = new DataTable();
        //    SqlConnection SqlCon = new SqlConnection();
        //    DataRow dr=null;
        //    try {
        //        SqlCon.ConnectionString=Connection.Cn;
        //        SqlCommand SqlCmd = new SqlCommand();
        //        SqlCmd.Connection=SqlCon;
        //        SqlCmd.CommandText="MostrarLibro";
        //        SqlCmd.CommandType=CommandType.StoredProcedure;

        //        SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
        //        SqlDat.Fill(DtResultado);

        //        if (DtResultado.Rows.Count>0) {
        //            dr=DtResultado.Rows[0];
        //            dr[atributo].ToString();              
        //        }
             
        //    }
        //    catch (Exception ex) {
        //        DtResultado=null;
        //    }
        //    return dr;
        //}

    }
}