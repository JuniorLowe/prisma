using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using Class1;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        //Startup chique = new Startup();
        IBGEMunic ibgeMunic = new IBGEMunic();

        var mun = ibgeMunic.BuscarMunics();
        
        gvDados.DataSource = mun;
        gvDados.DataBind();

        //TextBox1.Text = mun[0].Nome;

        /*
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "setFocus",
                                    "bootbox.alert('Autorização Bloqueada!'); ", true);
                                    */
    }

    protected void btnLimpar_Click(object sender, EventArgs e)
    {
        //
    }

    protected void txtBuscaNome_TextChanged(object sender, EventArgs e)
    {

    }

    protected void gvDados_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void gvDados_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

}