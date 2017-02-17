﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="verSeguimiento.aspx.vb"
    Inherits="_Default" %>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Seguimiento</title>
    <link rel="Stylesheet" href="style.css" type="text/css">
    <link rel="Stylesheet" href="menu.css" type="text/css">
    <link rel="icon" type="image/png" href="botones/favicon.png">

     <script src="Scripts/jquery-2.0.3.min.js" type="text/javascript"></script>


    <!--[if (gte IE 6)&(lte IE 8)]>
      <script type="text/javascript" src="selectivizr.js"></script>
      <noscript><link rel="stylesheet" href="[fallback css]" /></noscript>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>
    <![endif]-->

</head>
<body>

    <script src="Scripts/ScrollableGridPlugin.js" type="text/javascript"></script>
    <script type = "text/javascript">
        $(document).ready(function () {
            $('#<%=dgOrdenes.ClientID%>').Scrollable({
                ScrollHeight: 500
            });
        });

        $(window).resize(function () {
            //alert("<div>Handler for .resize() called.</div>");
            $(document).ready(function () {
                $('#<%=dgOrdenes.ClientID%>').cambiaResolucion({
                    ScrollHeight: 500
                });
            });
        });
    </script>

    <form id="form1" runat="server">

    <div id="pagina">
        <div id="blanco" style="background-color: white">
        </div>
        <div id="cabecera">
            <div style="width: auto; height: auto; min-height: 50px; float: left">
                <a href="default.aspx">
                    <img alt="Enruta Lectura y Reparto" style="float: left" height="50px" src="botones/enruta.jpg" />
                </a>
            </div>
             <div id="contenedor" runat="server">
                     <ul id="menu1" runat="server" visible="false">
                          <li><a href="envio.aspx">Importar</a></li>
                    <li><a href="verSeguimiento.aspx">Seguimiento</a></li>
                    <li><a href="verInicioFin.aspx">Inicio y Fin de Jornada</a></li>
                    <li>
                        <a href="#">Ver Ordenes</a>
                        <ul class="children">
                             <li><a href="verOrdenesPorEmpleado.aspx">Por Técnico</a></li>
                            <li><a href="verOrdenes.aspx">Por Número de Orden/Cte.</a></li>
                            <li><a href="verResumenEstados.aspx">Por Estados de la Orden</a></li>
                            <li><a href="verOrdenesporCalle.aspx">Por Calle</a></li>
                        </ul>
                    </li>
                        <li>
                            <a href="#">Catálogos</a>
                            <ul class="children">
                                <li><a href="empleadosABC.aspx">Técnicos</a></li>
                            </ul>
                            
                        </li>
  
                    <li><a href="logIn.aspx/?log=1">Salir</a></li>
                        <li></li>
                </ul>

                    

                    <ul id="menu2" runat="server" visible="false">
                   
                    <!--li><a href="asignacion.aspx">Asignar</a></--li-->
                    <li><a href="verSeguimiento.aspx">Seguimiento</a></li>
                    <li><a href="verInicioFin.aspx">Inicio y Fin de Jornada</a></li>
                    <li>
                        <a href="#">Ver Ordenes</a>
                        <ul class="children">
                             <li><a href="verOrdenesPorEmpleado.aspx">Por Técnico</a></li>
                            <li><a href="verOrdenes.aspx">Por Número de Orden/Cte.</a></li>
                            <li><a href="verResumenEstados.aspx">Por Estados de la Orden</a></li>
                            <li><a href="verOrdenesporCalle.aspx">Por Calle</a></li>
                        </ul>
                    </li>
                        <li>
                            <a href="#">Catálogos</a>
                            <ul class="children">
                                <li><a href="empleadosABC.aspx">Técnicos</a></li>
                            </ul>
                            
                        </li>
  
                    <li><a href="logIn.aspx/?log=1">Salir</a></li>
                        <li></li>
                </ul>

                    <ul id="menu3" runat="server" visible="false">
                    <li><a href="envio.aspx">Importar</a></li>
                    <li><a href="logIn.aspx/?log=1">Salir</a></li>
                        <li></li>
                </ul>
                </div>
                
            </div>
        <div id="navegador">
        </div>
        <div id="contenido">
            <br />
            <br />
         &nbsp; &nbsp;Fecha:
            <asp:TextBox ID="fecha1" runat="server"></asp:TextBox>
            <!-- SM- Calendario-29-08-2014-->
            <asp:CalendarExtender ID="cexfecha2" runat="server" TargetControlID="fecha1" Format="yyyyMMdd">
            </asp:CalendarExtender>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="fecha1"
                ErrorMessage="* Error(AñoMesDía)" ValidationExpression="^\d{4}((0[1-9])|(1[012]))((0[1-9]|[12]\d)|3[01])$" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Names="Segoe UI"
                Font-Size="12px"></asp:RegularExpressionValidator>
            <!-- SM- FIN Calendario-->
            &nbsp; a &nbsp;
            <asp:TextBox ID="fecha2" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;
             <!-- SM- Calendario-29-08-2014-->
            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="fecha2" Format="yyyyMMdd">
            </asp:CalendarExtender>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="fecha2"
                ErrorMessage="* Error(AñoMesDía)" ValidationExpression="^\d{4}((0[1-9])|(1[012]))((0[1-9]|[12]\d)|3[01])$" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" Font-Names="Segoe UI"
                Font-Size="12px"></asp:RegularExpressionValidator>
<!--SM 29-08-2014-->
            &nbsp;
            <asp:DropDownList Visible="false" ID="lstcentral" runat="server" Height="25px" Width="144px">
                <asp:ListItem Value="CE000">Todos</asp:ListItem>
                <asp:ListItem Value="CE001">Tampico</asp:ListItem>
                <asp:ListItem Value="CE002">Madero</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            <!-- SM- FIN Calendario-->
            <asp:CheckBox ID="ck_soloPendientes" runat="server" Text="Solo con pendientes" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="bRetrieve" runat="server" Text="Seleccionar" />
            <br />
            <br />
            <asp:DataGrid ID="dgOrdenes" runat="server" AllowSorting="True" AutoGenerateColumns="False"
                Font-Bold="True" Font-Italic="False" Font-Names="Segoe UI" Font-Overline="False"
                Font-Strikeout="False" Font-Underline="False" ForeColor="Black" Style="text-align: center;
                top: 0; left: 0px;">
                <AlternatingItemStyle BackColor="White" Font-Bold="False" Font-Italic="False" Font-Names="Segoe UI"
                    Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False"
                    ForeColor="Black" />
                <Columns>
                    <asp:BoundColumn DataField="nombre" HeaderText="Técnico">
                        <ItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False"
                            Font-Underline="False" HorizontalAlign="Left"/>
                        <HeaderStyle  />
                    </asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="Asignadas">
                        <ItemTemplate>
                            <a id="A2" runat="server" href='<%#getLinkVerResumen(Container.DataItem("asignadas"), Container.DataItem("idEmpleado"), ASIGNADAS, fecha1.Text, fecha2.Text)%>'>
                                <%# Container.DataItem("asignadas")%></a> &nbsp;&nbsp;
                        </ItemTemplate>
                        <ItemStyle  />
                         <HeaderStyle  />
                    </asp:TemplateColumn>

                     <asp:TemplateColumn HeaderText="Ejecutadas">
                        <ItemTemplate>
                            <a id="A1" runat="server" href='<%#getLinkVerResumen(Container.DataItem("ejecutadas"), Container.DataItem("idEmpleado"), EJECUTADAS, fecha1.Text, fecha2.Text)%>'>
                                <%# Container.DataItem("ejecutadas")%></a> &nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="Con Anomalia">
                        <ItemTemplate>
                            <a id="A1" runat="server" href='<%#getLinkVerResumen(Container.DataItem("reja"), Container.DataItem("idEmpleado"), REJA, fecha1.Text, fecha2.Text)%>'>
                                <%# Container.DataItem("reja")%></a> &nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="Pendientes">
                        <ItemTemplate>
                            <a runat="server" href='<%#getLinkVerResumen(Container.DataItem("pendientes"), Container.DataItem("idEmpleado"), PENDIENTES, fecha1.Text, fecha2.Text)%>'>
                                <%# Container.DataItem("pendientes")%></a> &nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="Sin Registro">
                        <ItemTemplate>
                            <a id="A3" runat="server" href='<%#getLinkVerResumen(Container.DataItem("sinRegistro"), Container.DataItem("idEmpleado"), SIN_REGISTRO, fecha1.Text, fecha2.Text)%>'>
                                <%# Container.DataItem("sinRegistro")%></a> &nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                   
                    <asp:TemplateColumn HeaderText="AutoReconectados">
                        <ItemTemplate>
                            <a id="A1" runat="server" href='<%#getLinkVerResumen(Container.DataItem("autoreconectados"), Container.DataItem("idEmpleado"), AUTORECONECTADO, fecha1.Text, fecha2.Text)%>'>
                                <%# Container.DataItem("autoreconectados")%></a> &nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    
                    <asp:TemplateColumn HeaderText="No visitadas">
                        <ItemTemplate>
                            <a id="A1" runat="server" href='<%#getLinkVerResumen(Container.DataItem("no_visitadas"), Container.DataItem("idEmpleado"), NO_VISITADAS, fecha1.Text, fecha2.Text)%>'>
                                <%# Container.DataItem("no_visitadas")%></a> &nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Incorrectas">
                        <ItemTemplate>
                            <a id="A1" runat="server" href='<%#getLinkVerResumen(Container.DataItem("incorrectas"), Container.DataItem("idEmpleado"), OTROS, fecha1.Text, fecha2.Text)%>'>
                                <%# Container.DataItem("incorrectas")%></a> &nbsp;&nbsp;
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn Visible="false" DataField="idEmpleado" HeaderText="id"></asp:BoundColumn>
                </Columns>
                <HeaderStyle BackColor="#004FC5" Font-Bold="False" Font-Italic="False" Font-Names="Segoe UI"
                    Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="White" />
                 <ItemStyle BackColor="#EAEAEA" Font-Bold="False" Font-Italic="False" Font-Names="Segoe UI" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                <SelectedItemStyle BackColor="#004FC5" Font-Bold="True" Font-Italic="False" Font-Names="Segoe UI"
                    Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False"
                    ForeColor="White" />
            </asp:DataGrid>
        </div>
        <div id="pie">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </div>
    </div>
    </form>
</body>
</html>