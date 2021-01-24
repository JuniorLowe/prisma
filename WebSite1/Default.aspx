<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <p>
                &nbsp;
            </p>
            <p>
                
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Buscar Cidade</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->


                <div class="box-body">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-9">
                                <div class="form-inline">
                                    <asp:TextBox ID="txtBuscaNome" runat="server" AutoPostBack="True" CausesValidation="True" class="form-control mb-2 mr-sm-2 mb-sm-0" OnTextChanged="txtBuscaNome_TextChanged" placeholder="Nome..." TextMode="Search"></asp:TextBox>
                                    <asp:TextBox ID="txtBuscaCodigo" runat="server" class="form-control mb-2 mr-sm-2 mb-sm-0" placeholder="Código..."></asp:TextBox>
                                    <asp:Button ID="btnBuscar0" runat="server" class="btn btn-default" OnClick="btnBuscar_Click" Text="Buscar" />
                                    &nbsp;
                                    <asp:Button ID="btnLimpar" runat="server" CausesValidation="False" class="btn btn-default" OnClick="btnLimpar_Click" Text="Limpar" UseSubmitBehavior="False" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box-body">
                    <asp:GridView ID="gvDados" runat="server" AutoGenerateColumns="False" class="table table-bordered table-striped" OnRowDeleting="gvDados_RowDeleting" OnSelectedIndexChanged="gvDados_SelectedIndexChanged" PageSize="20">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Código" />
                            <asp:BoundField DataField="Nome" HeaderText="Nome" />                            
                            <asp:BoundField DataField="Microrregiao.Nome" HeaderText="Microrregião" />
                            <asp:BoundField DataField="Microrregiao.Mesorregiao.Uf.Sigla" HeaderText="UF" />

                        </Columns>
                    </asp:GridView>



                </div>
            </div>

            </p>
            <p>
                &nbsp;
            </p>
            <p>



                &nbsp;
            </p>



            <link href="http://localhost:57503/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
            <!-- jQuery 2.1.3 -->
            <script src="http://localhost:57503/plugins/jQuery/jQuery-2.1.3.min.js"></script>
            <script src="http://localhost:57503/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
            <script type="text/javascript">
                function openModal() {
                    $('#deleteModal').modal('show');
                }

            </script>



            <p>
                &nbsp;
            </p>
        </div>
    </div>
</asp:Content>
