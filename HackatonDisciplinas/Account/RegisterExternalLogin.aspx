<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="RegisterExternalLogin.aspx.vb" Inherits="HackatonDisciplinas.RegisterExternalLogin" Async="true" %>

<%@ Import Namespace="HackatonDisciplinas" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <main>
        <h3>Registrar com sua conta <%: ProviderName %></h3>
        <asp:PlaceHolder runat="server">
            <div>
                <h4>Formulário de associação</h4>
                <hr />
                <asp:ValidationSummary runat="server" ShowModelStateErrors="true" CssClass="text-danger" />
                <p class="text-info">
                    Você foi autenticado com <strong><%: ProviderName %></strong>. Insira um email abaixo para o site atual
                e clique no botão Iniciar sessão.
                </p>

                <div class="row">
                    <asp:Label runat="server" AssociatedControlID="email" CssClass="col-md-2 col-form-label">E-mail</asp:Label>
                    <div class="col-md-10">
                        <asp:TextBox runat="server" ID="email" CssClass="form-control" TextMode="Email" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="email"
                            Display="Dynamic" CssClass="text-danger" ErrorMessage="O e-mail é exigido" />
                        <asp:ModelErrorMessage runat="server" ModelStateKey="email" CssClass="text-error" />
                    </div>
                </div>

                <div class="row">
                    <div class="offset-md-2 col-md-10">
                        <asp:Button runat="server" Text="Logon" CssClass="btn btn-outline-dark" OnClick="LogIn_Click" />
                    </div>
                </div>
            </div>
        </asp:PlaceHolder>
    </main>
</asp:Content>
