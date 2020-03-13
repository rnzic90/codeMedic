<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Racun.aspx.cs" Inherits="LekarskaOrdinacijaCodeMedic.Reports.Racun" %>


<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
<title></title>
<style>
html,body,form,#div1 {
height: 100%; 
}
</style>

</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager runat="server"></asp:ScriptManager> 
<rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Height="600px" PageCountMode="Actual" SizeToReportContent="True" Width="1500px" ZoomMode="PageWidth">
<ServerReport ReportServerUrl="http://localhost:8080/ReportServer/" ReportPath="/mesecni_racun" />
<LocalReport EnableHyperlinks="True" reportpath="Reports\Racun.rdlc">
<DataSources>
<rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="MainDataSet" />
    <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSetRacun" />
</DataSources>
</LocalReport>
</rsweb:ReportViewer>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(local)\SQLEXPRESS;Initial Catalog=LekarskaOrdinacijaDb;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Racun]"></asp:SqlDataSource>
</form>
</body>
</html>