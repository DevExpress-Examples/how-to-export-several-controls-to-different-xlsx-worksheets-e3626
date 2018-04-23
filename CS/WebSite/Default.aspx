<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v12.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v12.1.Export" Namespace="DevExpress.Web.ASPxGridView.Export" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v12.1" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v12.1.Export" Namespace="DevExpress.Web.ASPxTreeList.Export" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraCharts.v12.1.Web" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%">
        <tr>
            <td align="center">
                <dx:ASPxGridView ID="Grid" runat="server" DataSourceID="AccessDataSource1" AutoGenerateColumns="False">
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="CategoryName" />
                        <dx:GridViewDataTextColumn FieldName="ProductSales" />
                    </Columns>
                </dx:ASPxGridView>
                <dx:ASPxGridViewExporter ID="GridExporter" runat="server" GridViewID="grid" />
            </td>
            <td align="center">
                <dx:ASPxTreeList ID="Tree" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="AccessDataSource2" KeyFieldName="ID" ParentFieldName="PARENTID">
                    <Columns>
                        <dx:TreeListTextColumn FieldName="DEPARTMENT" />
                        <dx:TreeListTextColumn FieldName="BUDGET" />
                        <dx:TreeListTextColumn FieldName="LOCATION" />
                        <dx:TreeListTextColumn FieldName="PHONE1" />
                    </Columns>
                </dx:ASPxTreeList>
                <dx:ASPxTreeListExporter ID="TreeListExporter" runat="server" TreeListID="Tree" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <dx:WebChartControl ID="Chart" runat="server" DataSourceID="AccessDataSource1" Width="500"
                    Height="300" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <dx:ASPxButton ID="ExportButton" runat="server" Text="Export" OnClick="ExportButton_Click" Font-Size="X-Large" Width="150" />

    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
        SelectCommand="SELECT TOP 20 [CategoryName], [ProductSales] FROM [ProductReports]" />
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/Departments.mdb"
        SelectCommand="SELECT * FROM [Departments]" />
    </form>
</body>
</html>
