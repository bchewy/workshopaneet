<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="IndexBeautify.aspx.cs" Inherits="Workshop.IndexBeautify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>
            <div class="container w-100 h-75 rounded">
            <p>
               <asp:Label ID="lbl" runat="server" Text="Label"></asp:Label>
            </p>
            <div class="form-group pt-2">
                <label for="exampleInputEmail1">Your name</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                            <small id="namehelp" class="form-text text-muted">How we can address you.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                <small id="emailHelp" class="form-text text-muted">We'll never share your number with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">Your message</label>
            <asp:TextBox ID="TextBox3" runat="server" Height="250px" Width="1110px" CssClass="form-control"></asp:TextBox>
            </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary btn-lg btn-block" Text="Send" />
        </div>

</asp:Content>
