﻿<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="MaterialDetails.aspx.vb" Inherits="librarians_MaterialDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        
        SelectCommand="SELECT [MatID], [Type], [CallNumber], [Title], [Author], [Publisher], [Year], [ISBN], [Avail], [PhotoName] FROM [SLPL_Materials] WHERE ([MatID] = @MatID)" 
        
        DeleteCommand="DELETE FROM [SLPL_Materials] WHERE [MatID] = @MatID" 
        
        InsertCommand="INSERT INTO [SLPL_Materials] ([Type], [CallNumber], [Title], [Author], [Publisher], [Year], [ISBN], [Avail], [PhotoName]) VALUES (@Type, @CallNumber, @Title, @Author, @Publisher, @Year, @ISBN, @Avail, @PhotoName)" 
        
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
        

        <SelectParameters>
            <asp:QueryStringParameter Name="MatID" QueryStringField="MatID" Type="Int32" />
        </SelectParameters>


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
        
        SelectCommand="SELECT [MatType] FROM [SLPL_MaterialType]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [Availability] FROM [SLPL_MaterialAvailability]"></asp:SqlDataSource>

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MatID" DataSourceID="SqlDataSource1">
        
        <EditItemTemplate> 
            
            <table>
                <tr>
                    <td align="right">MatID:</td><td align="left"><asp:Textbox ID="tb_MatID" runat="server" Enabled="false" Text='<%# Eval("MatID") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Type:</td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_MaterialType" runat="server" DataSourceID="SqlDataSource2"
                            DataTextField="MatType" DataValueField="MatType" SelectedValue='<%# Bind("Type")%>'>                            
                        </asp:DropDownList>                      
                    </td>
                </tr>

                <tr>
                    <td align="right">CallNumber:</td><td align="left"><asp:Textbox ID="tb_CallNumber" runat="server" Text='<%# Bind("CallNumber") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Title:</td><td align="left"><asp:Textbox ID="tb_Title" runat="server" Text='<%# Bind("Title") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Author:</td><td align="left"><asp:Textbox ID="tb_Author" runat="server" Text='<%# Bind("Author") %>' /></td>
                </tr>
                    
                <tr>
                    <td align="right">Publisher:</td><td align="left"><asp:Textbox ID="tb_Publisher" runat="server" Text='<%# Bind("Publisher") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Year:</td><td align="left"><asp:Textbox ID="tb_Year" runat="server" Text='<%# Bind("Year") %>' /></td>
                </tr>

                <tr> 
                   <td align="right">ISBN:</td><td align="left"><asp:Textbox ID="tb_ISBN" runat="server" Text='<%# Bind("ISBN") %>' /></td>
                </tr>

                <tr> 
                    <td align="right">PhotoName:</td><td align="left"><asp:Textbox ID="tb_PhotoName" runat="server" Text='<%# Bind("PhotoName") %>' /></td>
                </tr>

                <tr> 
                    <td align="right">Avail:</td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_Availability" runat="server" DataSourceID="SqlDataSource3"
                            DataTextField="Availability" DataValueField="Availability" SelectedValue='<%# Bind("Avail")%>'>                            
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>

            <asp:LinkButton ID="UpdateButton" runat="server" CauseValidation="True" CommandName="Update" Text="Update" />

            <asp:LinkButton ID="UpdateCancelButton" runat="server" CauseValidation="False" CommandName="Cancel" Text="Cancel" />
                      
        </EditItemTemplate>


        <InsertItemTemplate>
        </InsertItemTemplate>



        <ItemTemplate>
            
            <table>
                <tr>
                    <td align="right">MatID:</td><td align="left"><asp:Label ID="lbl_MatID" runat="server" Text='<%# Eval("MatID") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Type:</td><td align="left"><asp:Label ID="lbl_MatType" runat="server" Text='<%# Bind("Type") %>' /></td>
                </tr>

                <tr>
                    <td align="right">CallNumber:</td><td align="left"><asp:Label ID="lbl_CallNumber" runat="server" Text='<%# Bind("CallNumber") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Title:</td><td align="left"><asp:Label ID="lbl_Title" runat="server" Text='<%# Bind("Title") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Author:</td><td align="left"><asp:Label ID="lbl_Author" runat="server" Text='<%# Bind("Author") %>' /></td>
                </tr>
                    
                <tr>
                    <td align="right">Publisher:</td><td align="left"><asp:Label ID="lbl_Publisher" runat="server" Text='<%# Bind("Publisher") %>' /></td>
                </tr>

                <tr>
                    <td align="right">Year:</td><td align="left"><asp:Label ID="lbl_Year" runat="server" Text='<%# Bind("Year") %>' /></td>
                </tr>

                <tr> 
                   <td align="right">ISBN:</td><td align="left"><asp:Label ID="lbl_ISBN" runat="server" Text='<%# Bind("ISBN") %>' /></td>
                </tr>

                <tr> 
                    <td align="right">PhotoName:</td><td align="left"><asp:Label ID="lbl_PhotoName" runat="server" Text='<%# Bind("PhotoName") %>' /></td>
                </tr>

                <tr> 
                    <td align="right">Avail:</td><td align="left"><asp:Label ID="lbl_Availability" runat="server" Text='<%# Bind("Avail") %>' /></td>
                </tr>
            </table>

            <asp:Button ID="EditButton" runat="server" CauseValidation="False" CommandName="Edit" Text="Edit" />

            &nbsp

            <asp:Button ID="DeleteButton" runat="server" CauseValidation="False" CommandName="Delete" Text="Delete" OnClientClick ="return confirm('Are you sure you want to delete this material record?')"/>

        </ItemTemplate>
    </asp:FormView>

    <asp:Label ID="lbl_DeletedMaterial" runat="server" Text=""></asp:Label>

</asp:Content>
