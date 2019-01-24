using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Test_Zadatak
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnSacuvaj_Click(object sender, EventArgs e)
        {
             try
             {
                
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);
                conn.Open();
                 string insertQuery = "INSERT INTO tableinfo(ime,prezime,adresa,neto,bruto,tr_pio,tr_zo,tr_nez,tp_pio,tp_zo) values(@ime,@prezime,@adresa,@neto,@bruto," +
                    "@tr_pio,@tr_zo,@tr_nez,@tp_pio,@tp_zo)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@ime", TbIme.Text);
                cmd.Parameters.AddWithValue("@prezime", TbPrezime.Text);
                cmd.Parameters.AddWithValue("@adresa", TbAdresa.Text);
                cmd.Parameters.AddWithValue("@neto", Convert.ToDouble(TbNeto.Text));
                cmd.Parameters.AddWithValue("@bruto", Convert.ToDouble(TbBrutoIznos.Text));
                cmd.Parameters.AddWithValue("@tr_pio", Convert.ToDouble(TbBrutoIznos.Text) * (14.0 / 100));
                cmd.Parameters.AddWithValue("@tr_zo", Convert.ToDouble(TbBrutoIznos.Text) * (5.15 / 100));
                cmd.Parameters.AddWithValue("@tr_nez", Convert.ToDouble(TbBrutoIznos.Text) * (0.75 / 100));
                cmd.Parameters.AddWithValue("@tp_pio", Convert.ToDouble(TbBrutoIznos.Text) * (12.0 / 100));
                cmd.Parameters.AddWithValue("@tp_zo", Convert.ToDouble(TbBrutoIznos.Text) * (5.15 / 100));
                cmd.ExecuteNonQuery();              
                Response.Redirect("Prikaz.aspx");
                 conn.Close();
             }
             catch(Exception ex)
             {
                 Response.Write("error" + ex.ToString());
             }       
        }

        protected void BtnBrutoIznos_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TbNeto.Text))
            {
                Response.Write("<script>alert('Unesite neto iznos.')</script>");
            }
            else
            {              
                TbBrutoIznos.Text = Convert.ToString((Convert.ToDouble(TbNeto.Text) - (15000 * 0.1)) / 0.701);
                Double value;
                if (Double.TryParse(TbBrutoIznos.Text, out value))
                    TbBrutoIznos.Text = String.Format(System.Globalization.CultureInfo.CurrentCulture, "{0:N2}", value);
                else
                    TbBrutoIznos.Text = String.Empty;
            }
           

        }
    }
}