<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cookies_task.aspx.cs" Inherits="State_Managment.cookies_task" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">

  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div>
                    
            <asp:Label ID="Label1" runat="server" BorderColor="#CC9900" BorderStyle="Solid" BorderWidth="3px"></asp:Label>
                    
                    <br />
                
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>

            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" >
                 <asp:ListItem Value="red">Blue</asp:ListItem>
                  <asp:ListItem Value="green">Red</asp:ListItem>
                 <asp:ListItem Value="black">Green</asp:ListItem>
                <asp:ListItem Value="blue">Black</asp:ListItem>
            </asp:DropDownList>
            <br />
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>


              


            </div>
    </form>
</body>
</html>
