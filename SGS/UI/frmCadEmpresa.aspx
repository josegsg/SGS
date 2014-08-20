<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="frmCadEmpresa.aspx.vb" Inherits="SGS.frmCadEmpresa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>

A {
	text-decoration: underline;
	color:FF7E00;
	font-size: 10; 
	font-family: arial;
}
TD{
FONT-SIZE:11;
FONT-FAMILY:arial;
COLOR:000000;
}

#divLogo{
	width: 100%;
	height: 80px;
	background-image: url("../imagens/fundo_topo.jpg");
}

#titulo{
	font-size: 30px;
	color: white;
	margin-left: 15px;
}

#navMenu{
	width: 100%;
	height: 28px;	
	margin-top:5px;
	margin-left:5px;
}

#navMenu ul {
	padding:0px;
	margin:0px;	
	list-style:none;
}

#navMenu ul li { 
	display: inline; 

}

#navMenu ul li a {
	padding: 2px 10px;
	display: inline-block;
 
	background-color:#EDEDED;
	color: #333;
	text-decoration: none;
	font-size:14px;
	border-bottom:3px solid #EDEDED;
}

#navMenu ul li a:hover {
	background-color:#D6D6D6;
	color: #6D6D6D;
	border-bottom:3px solid #EA0000;
}



#navToolBar{
	width: 100%;
	height: 38px;	
	margin-top:0px;
	margin-left:0px;
	
	background-color:#EDEDED;
}

#navToolBar ul {
	padding:0px;
	margin-top:5px;
	margin-left:25%;
	list-style:none;	
	width:48%;
}

#navToolBar ul li { 
	display: inline; 
}

#navToolBar ul li a {
	padding: 2px 5px;
	display: inline-block;
 
	
	
	
	text-decoration: none;

	
}

#navToolBar ul li a:hover {	
	border-bottom:3px solid #EA0000;
}

#tabForm{
	margin-left:20%;
	margin-top:35px;
}

#box-table-b {
font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
font-size: 12px;
text-align: center;
border-collapse: collapse;
border-top: 7px solid #9baff1;
border-bottom: 7px solid #9baff1;
margin: 20px;
}

#box-table-b th {
font-size: 13px;
font-weight: normal;
background: #e8edff;
border-right: 1px solid #9baff1;
border-left: 1px solid #9baff1;
border-bottom: 1px solid #aabcfe;
color: #039;
padding: 8px;
}

#box-table-b td {
background: #e8edff;
border-right: 1px solid #aabcfe;
border-left: 1px solid #aabcfe;
color: #669;
padding: 8px;
}

#box-table-b tr:hover td {
background: #d0dafd;
color: #339;
}

</style>
</head>
<body LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH="0" MARGINHEIGHT="0">
    
    <form id="form1" runat="server">
    
    <table height="100%" cellspacing="0" cellpadding="0" border="0">
	<tr>
		<td width="50%" background="../imagens/bg.jpg"></td>
			  <td background="../imagens/bg_lft.jpg" width="28" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			  <td bgcolor="#FFFFFF" valign="top" height="100%">


			<table border="0" cellpadding="0" cellspacing="0" width="800" height="100%">
				<tr>
					<td colspan="2">  
						<div id="divLogo" width="800" height="110">
							<br>
							<span id="titulo"><center>Cadastro de Banner</center></span>
						</div>
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" 
                            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="Medium" 
                            ForeColor="#284E98" Orientation="Horizontal" StaticSubMenuIndent="10px">
                            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicMenuStyle BackColor="#B5C7DE" />
                            <DynamicSelectedStyle BackColor="#507CD1" />
                            <Items>
                                <asp:MenuItem Text="Principal" Value="Principal"></asp:MenuItem>
                                <asp:MenuItem Text="Empresa" Value="Empresa">
                                    <asp:MenuItem Text="Cadastro" Value="Cadastro"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Representante" Value="Representante">
                                    <asp:MenuItem Text="Perfil" Value="Perfil"></asp:MenuItem>
                                    <asp:MenuItem Text="Cadastro" Value="Cadastro"></asp:MenuItem>
                                    <asp:MenuItem Text="Representante/Questão" Value="Representante/Questão">
                                    </asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Indicador" Value="Indicador">
                                    <asp:MenuItem Text="Cadastro" Value="Cadastro"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Categoria" Value="Categoria">
                                    <asp:MenuItem Text="Cadastro" Value="Cadastro"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Questões" Value="Questões">
                                    <asp:MenuItem Text="Cadastro" Value="Cadastro"></asp:MenuItem>
                                </asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <StaticSelectedStyle BackColor="#507CD1" />
                        </asp:Menu>
					</td>
					
				</tr>
				
				<tr>
					<td colspan="2">
						<nav id="navToolBar">
							<ul>
								<li><a href="#"><img src="../images/add.ico"></a></li>
								<li><a href="#"><img src="../images/save.ico"></a></li>
								<li><a href="#"><img src="../images/no.ico"></a></li>
								<li>
									<select id="cmbFiltro">
										<option value="0"></option>
										<option value="1">Opção 1</option>
										<option value="2">Opção 2</option>
										<option value="3">Opção 3</option>
									</select>
								
									<input type="text" id="txtFiltro" name="txtFiltro"></li>	
									<a href="#"><img src="../images/find.ico"></a>
								</li>					
								
							</ul>
						</nav>
					</td>					
				</tr>
				
				<tr>
					<td colspan="2">
							<table id=tabForm>
								<tr>
									<td>Código</td> <td><input type="text" id="txtCodigo" name="txtCodigo" disabled size="10px"></td>
								<tr>
								<tr>
									<td>Nome</td> <td><input type="text" id="txtNome" name="txtNome" size="61px"></td>
								<tr>								
								<tr>
									<td>Imagem</td> <td><input type="file" name="path" size="50"></td>									
								<tr>								
								<tr>
									<td>Posição</td> <td><input type="text" id="txtPosicao" name="txtPosicao" size="10px"></td>
								<tr>
								<tr>
									<td>Ativo</td> <td><input type="checkbox" id="chkStatus" name="chkStatus" value="Ativo"></td>
								</tr>	
							</table>
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<table id="box-table-b">
							<tr>
								<th scope="col" style="width:50px;">Código</th>								
								<th scope="col" style="width:500px;">Nome</th>
								<th scope="col" style="width:100px;">Posição</th>
								<th scope="col" style="width:50px;">Status</th>
								<th scope="col"></th>	
								<th scope="col"></th>	
							</tr>
							<tbody>
							<tr>
								<td>1</td>
								<td style="text-align: left;">Stephen C. Cox</td>
								<td>1</td>
								<td>A</td>
								<td><img src="../images/edit.png"></td>
								<td><img src="../images/delete.png"></td>	
							</tr>
							<tr>
								<td>2</td>
								<td style="text-align: left;">Josephin Tan</td>
								<td>2</td>
								<td>I</td>		
								<td><img src="../images/edit.png"></td>
								<td><img src="../images/delete.png"></td>	
							</tr>
							<tr>
								<td>3</td>
								<td style="text-align: left;">Joyce Ming</td>
								<td>3</td>
								<td>A</td>	
								<td><img src="../images/edit.png"></td>
								<td><img src="../images/delete.png"></td>	
							</tr>
							<tr>
								<td>4</td>
								<td style="text-align: left;">James A. Pentel</td>
								<td>4</td>
								<td>A</td>
								<td><img src="../images/edit.png"></td>
								<td><img src="../images/delete.png"></td>	
							</tr>
							</tbody>
						</table>
					</td>
				<tr>
					<td valign="top" height="100%">
								
					</td>
					
				</tr>
				<tr>
					<td background="../images/footer_2.jpg" height="44" align="center" valign="middle"><font style="font-size:9;font-family:verdana;font:900;color:666666">
						Desenvolvido por <a href="http://wantodo.com.br">WanToDo</a> Sistemas. 2014
					</td>
				</tr>
			</table>
		</td>
		
		<td width="50%" background="../imagens/bg_lft.gif"></td>
	</tr>
</table>
    
    </form>
    
</body>
</html>
