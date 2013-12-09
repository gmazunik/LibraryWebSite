<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="AddNewMaterial.aspx.vb" Inherits="librarians_AddNewMaterial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        
        DeleteCommand="DELETE FROM [SLPL_Materials] WHERE [MatID] = @MatID" 
        InsertCommand="INSERT INTO [SLPL_Materials] ([Type], [CallNumber], [Title], [Author], [Publisher], [Year], [ISBN], [Avail], [PhotoName]) VALUES (@Type, @CallNumber, @Title, @Author, @Publisher, @Year, @ISBN, @Avail, @PhotoName)" 
        SelectCommand="SELECT [MatID], [Type], [CallNumber], [Title], [Author], [Publisher], [Year], [ISBN], [Avail], [PhotoName] FROM [SLPL_Materials]" 
        UpdateCommand="UPDATE [SLPL_Materials] SET [Type] = @Type, [CallNumber] = @CallNumber, [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Year] = @Year, [ISBN] = @ISBN, [Avail] = @Avail, [PhotoName] = @PhotoName WHERE [MatID] = @MatID">
        
        <DeleteParameters>
            <asp:Parameter Name="MatID" Type="Int32" />
        </DeleteParameters>

        <InsertParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="CallNumber" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Avail" Type="String" />
            <asp:Parameter Name="PhotoName" Type="String" />
        </InsertParameters>

        <UpdateParameters>
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="CallNumber" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Year" Type="Int32" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Avail" Type="String" />
            <asp:Parameter Name="PhotoName" Type="String" />
            <asp:Parameter Name="MatID" Type="Int32" />
        </UpdateParameters>

    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        
        SelectCommand="SELECT [MatType] FROM [SLPL_MaterialType]">
    
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        
        SelectCommand="SELECT [Availability] FROM [SLPL_MaterialAvailability]">
    
    </asp:SqlDataSource>


    <asp:FormView ID="FormView1" 
        runat="server" 
        DataKeyNames="MatID" 
        DataSourceID="SqlDataSource1" 
        DefaultMode="Insert"
        AllowPaging="true"
        GridLines="None"
        HeaderText="Book Details"
        CssClass="books"
        HeaderStyle-CssClass="header"
        FieldHeaderStyle-CssClass="fieldHeader"
        AlternatingRowStyle-CssClass="alternating"
        CommandRowStyle-CssClass="command"
        PagerStyle-CssClass="pager"

        >
        
        <EditItemTemplate>           
        </EditItemTemplate>

        <InsertItemTemplate>
             
            <table>

                <tr>
                    <td align="right">Type:</td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_MaterialType" runat="server" DataSourceID="SqlDataSource2"
                            DataTextField="MatType" DataValueField="MatType" SelectedValue='<%# Bind("Type")%>'>                            
                        </asp:DropDownList>                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddl_MaterialType" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="right">CallNumber:</td><td align="left"><asp:Textbox ID="tb_CallNumber" runat="server" Text='<%# Bind("CallNumber") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_CallNumber" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="right">Title:</td><td align="left"><asp:Textbox ID="tb_Title" runat="server" Text='<%# Bind("Title") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_Title" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="right">Author:</td><td align="left"><asp:Textbox ID="tb_Author" runat="server" Text='<%# Bind("Author") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_Author" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                    
                <tr>
                    <td align="right">Publisher:</td><td align="left"><asp:Textbox ID="tb_Publisher" runat="server" Text='<%# Bind("Publisher") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_Publisher" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="right">Year:</td><td align="left"><asp:Textbox ID="tb_Year" runat="server" Text='<%# Bind("Year") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_Year" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr> 
                   <td align="right">ISBN:</td><td align="left"><asp:Textbox ID="tb_ISBN" runat="server" Text='<%# Bind("ISBN") %>' />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_ISBN" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr> 
                    <td align="right">PhotoName:</td><td align="left"><asp:Textbox ID="tb_PhotoName" runat="server" Text='<%# Bind("PhotoName") %>' /><asp:FileUpload ID="FileUploadControl" runat="server" /><asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" /></td>
                </tr>

                <tr> 
                    <td align="right">Avail:</td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_Availability" runat="server" DataSourceID="SqlDataSource3"
                            DataTextField="Availability" DataValueField="Availability" SelectedValue='<%# Bind("Avail")%>'>                            
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddl_Availability" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table> 
                  
            <asp:LinkButton ID="InsertButton" runat="server" CauseValidation="True" CommandName="Insert" Text="Add New Item" />

            &nbsp; &nbsp;

            <asp:LinkButton ID="InsertCancelButton" runat="server" CauseValidation="False" CommandName="Cancel" Text="Cancel" />
        
        </InsertItemTemplate>        
        <ItemTemplate>
          
        </ItemTemplate>
    </asp:FormView>


</asp:Content>

