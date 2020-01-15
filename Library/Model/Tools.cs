using Library.Controller;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Library.Model {
    public class Tools {

            public int Contador(string value) {
                DataTable DtResultado = new DataTable();
                SqlConnection SqlCon = new SqlConnection();
                DataRow dr;
                int cantidad = 0;
                try {
                    SqlCon.ConnectionString = Connection.Cn;
                    SqlCommand SqlCmd = new SqlCommand();
                    SqlCmd.Connection = SqlCon;
                    SqlCmd.CommandText = "Contador";
                    SqlCmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter ParDato = new SqlParameter();
                    ParDato.ParameterName = "@value";
                    ParDato.SqlDbType = SqlDbType.VarChar;
                    ParDato.Size = 50;
                    ParDato.Value = value;
                    SqlCmd.Parameters.Add(ParDato);

                    SqlDataAdapter SqlDat = new SqlDataAdapter(SqlCmd);
                    SqlDat.Fill(DtResultado);

                    if (DtResultado.Rows.Count > 0) {
                        dr = DtResultado.Rows[0];
                        cantidad = Convert.ToInt32(dr[0].ToString());
                        return cantidad;
                    }

                } catch (Exception ex) {
                    return 0;
                }
                return cantidad;
            }
    }
}