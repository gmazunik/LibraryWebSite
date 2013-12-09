<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="PatronProfile.aspx.vb" Inherits="patrons_PatronProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>View & Edit Patron Details</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<br />
    <asp:FormView 
        ID="FormView1" 
        runat="server" 
        DataKeyNames="UserID" 
        DataSourceID="SqlDataSource2"
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
         <table>
             <tr>
                 <td align="right"> First Name: </td><td align="left"><asp:TextBox ID="tb_FirstName" runat="server" Text='<%# Bind("FirstName") %>' /></td>                    
             </tr>

             <tr>
                 <td align="right"> Last Name: </td><td align="left"><asp:TextBox ID="tb_LastName" runat="server" Text='<%# Bind("LastName")%>' /></td>                    
             </tr>

             <tr>
                 <td align="right"> Birth Date: </td><td align="left"><asp:TextBox ID="tb_BirthDate" runat="server" Text='<%# Bind("Birthdate")%>' /></td>                    
             </tr>

             <tr>
                 <td align="right"> Address1: </td><td align="left"><asp:TextBox ID="tb_Address1" runat="server" Text='<%# Bind("Address1")%>' /></td>                    
             </tr>

             <tr>
                 <td align="right"> Address2: </td><td align="left"><asp:TextBox ID="tb_Address2" runat="server" Text='<%# Bind("Address2")%>' /></td>                    
             </tr>

             <tr>
                 <td align="right"> City: </td><td align="left"><asp:TextBox ID="tb_City" runat="server" Text='<%# Bind("City")%>' /></td>                    
             </tr>

             <tr>
                 <td align="right"> State: </td>
                 <td align="left">
                     <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource1"
                        DataTextField="PostalCode" DataValueField="PostalCode" SelectedValue='<%# Bind("State")%>' />
                 </td>
             </tr>      

             <tr>
                  <td align="right"> Zip: </td><td align="left"><asp:TextBox ID="tb_Zip" runat="server" Text='<%# Bind("Zip")%>' /></td>            
             </tr>

             <tr>
                  <td align="right"> Phone Number 1: </td><td align="left"><asp:TextBox ID="tb_PhoneNumber1" runat="server" Text='<%# Bind("PhoneNumber")%>' /></td>
             </tr>

             <tr>
                 <td align="right"> Phone Number 2: </td><td align="left"><asp:TextBox ID="tb_PhoneNumber2" runat="server" Text='<%# Bind("Phonenumber1")%>' /></td> 
             </tr>

             <tr>
                  <td align="right"> E-mail: </td><td align="left"><asp:TextBox ID="tb_email" runat="server" Text='<%# Bind("PrimaryEmail")%>' /></td>
             </tr>

             <tr>
                 <td> &nbsp; </td><td> &nbsp; </td>
             </tr>
                 
             <tr>
                 <td align="right"> User ID: </td><td align="left"><asp:Label ID="lbl_UserID" runat="server" Text='<%# Eval("UserId")%>' /></td> 
             </tr>

             <tr>
                  <td align="right"> User Name: </td><td align="left"><asp:TextBox ID="tb_UserName" Enabled="false" runat="server" Text='<%# Bind("UserName")%>' /></td>
             </tr>

             <tr>
                  <td align="right"> Role Name: </td><td align="left"><asp:TextBox ID="tb_RoleName" Enabled="false" runat="server" Text='<%# Bind("RoleName")%>' /></td>
             </tr>
         </table>
            
       
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
             SelectCommand="SELECT [PostalCode] FROM [SLPL_StateCodes]">
            </asp:SqlDataSource>

        </EditItemTemplate>

				<ItemTemplate>   
            
           <table>

             <tr>
                 <td align="right"> First Name: </td><td align="left"><asp:Label ID="lbl_FirstName" runat="server" Text='<%# Bind("FirstName") %>' /></td>                    
             </tr>


             <tr>
                 <td align="right"> Last Name: </td><td align="left"><asp:Label ID="lbl_LastName" runat="server" Text='<%# Bind("LastName")%>' /></td>                    
             </tr>


             <tr>
                 <td align="right"> Birth Date: </td><td align="left"><asp:Label ID="lbl_BirthDate" runat="server" Text='<%# Bind("Birthdate")%>' /></td>                    
             </tr>


             <tr>
                 <td align="right"> Address1: </td><td align="left"><asp:Label ID="lbl_Address1" runat="server" Text='<%# Bind("Address1")%>' /></td>                    
             </tr>


             <tr>
                 <td align="right"> Address2: </td><td align="left"><asp:Label ID="lbl_Address2" runat="server" Text='<%# Bind("Address2")%>' /></td>                    
             </tr>


             <tr>
                 <td align="right"> City: </td><td align="left"><asp:Label ID="lbl_City" runat="server" Text='<%# Bind("City")%>' /></td>                    
             </tr>


             <tr>
                 <td align="right"> State: </td><td align="left"><asp:Label ID="lbl_State" runat="server" Text='<%# Bind("State")%>' /></td>                    
             </tr> 
                    

             <tr>
                  <td align="right"> Zip: </td><td align="left"><asp:Label ID="lbl_Zip" runat="server" Text='<%# Bind("Zip")%>' /></td>            
             </tr>


             <tr>
                  <td align="right"> Phone Number 1: </td><td align="left"><asp:Label ID="lbl_PhoneNumber1" runat="server" Text='<%# Bind("PhoneNumber")%>' /></td>
             </tr>


             <tr>
                 <td align="right"> Phone Number 2: </td><td align="left"><asp:Label ID="lbl_PhoneNumber2" runat="server" Text='<%# Bind("Phonenumber1")%>' /></td> 
             </tr>


             <tr>
                  <td align="right"> E-mail: </td><td align="left"><asp:Label ID="lbl_email" runat="server" Text='<%# Bind("PrimaryEmail")%>' /></td>
             </tr>


             <tr>
                 <td> &nbsp; </td><td> &nbsp; </td>
             </tr>

                 
             <tr>
                 <td align="right"> User ID: </td><td align="left"><asp:Label ID="lbl_UserID" runat="server" Text='<%# Eval("UserId")%>' /></td> 
             </tr>


             <tr>
                  <td align="right"> User Name: </td><td align="left"><asp:Label ID="lbl_UserName" runat="server" Text='<%# Bind("UserName")%>' /></td>
             </tr>


             <tr>
                  <td align="right"> Role Name: </td><td align="left"><asp:Label ID="lbl_RoleName" runat="server" Text='<%# Bind("RoleName")%>' /></td>
             </tr>

           </table>

             <br />
                        
             <asp:Button ID="EditButton" runat="server" CauseValidation="False" CommandName="Edit" Text="Edit" />

             &nbsp

             <asp:Button ID="DeleteButton" runat="server" CauseValidation="False" CommandName="Delete" Text="Delete" OnClientClick ="return confirm('Are you sure you want to delete this patron record?')"/>
         
           
                  
        </ItemTemplate>

    </asp:FormView>
    <br />
    <br />
    <br />
     <asp:GridView 
         ID="GridView1" 
         runat="server" 
         AutoGenerateColumns="False" 
         DataKeyNames="MatID" 
         DataSourceID="SqlDataSource3"
         style="margin-bottom: 0px"
        Gridlines="None"
        CssClass="cssgridview"
        HeaderStyle-CssClass="header"
        PagerStyle-CssClass="pgr"
        AllowPaging="True" 
        AllowSorting="True" 
        alternatingrowstyle-CssClass="alt"
        >
         <Columns>
             <asp:BoundField DataField="MatID" HeaderText="MatID" InsertVisible="False" ReadOnly="True" SortExpression="MatID" />
             <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
             <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
             <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
             <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
             <asp:BoundField DataField="DateDue" HeaderText="DateDue" SortExpression="DateDue" />
         </Columns>
    </asp:GridView>


     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT [PostalCode] FROM [SLPL_StateCodes]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        DeleteCommand="DELETE FROM [SLPL_UserProfile] WHERE [UserID] = @UserID" 
        
        SelectCommand="SELECT SLPL_UserProfile.UserID, SLPL_UserProfile.FirstName, SLPL_UserProfile.LastName, SLPL_UserProfile.Birthdate, SLPL_UserProfile.Address1, SLPL_UserProfile.Address2, SLPL_UserProfile.City, SLPL_UserProfile.State, SLPL_UserProfile.Zip, SLPL_UserProfile.PhoneNumber, SLPL_UserProfile.PhoneNumber1, SLPL_UserProfile.PrimaryEmail, aspnet_Users.UserName, aspnet_Roles.RoleName FROM SLPL_UserProfile INNER JOIN aspnet_Users ON SLPL_UserProfile.UserID = aspnet_Users.UserID INNER JOIN aspnet_UsersInRoles ON aspnet_Users.UserID = aspnet_UsersInRoles.UserId INNER JOIN aspnet_Roles ON aspnet_UsersInRoles.RoleId = aspnet_Roles.RoleId WHERE (SLPL_UserProfile.UserID = @UserID)" 
        
        UpdateCommand="UPDATE [SLPL_UserProfile] SET [FirstName] = @FirstName, [LastName] = @LastName, [Birthdate] = @Birthdate, [Address1] = @Address1, [Address2] = @Address2, [City] = @City, [State] = @State, [Zip] = @Zip, [PhoneNumber] = @PhoneNumber, [PhoneNumber1] = @PhoneNumber1, [PrimaryEmail] = @PrimaryEmail WHERE [UserID] = @UserID">
        
        <DeleteParameters>
            <asp:Parameter Name="UserID" Type="Object" />
        </DeleteParameters>
       
        <SelectParameters>
            <asp:QueryStringParameter Name="UserID" QueryStringField="UserID" />
        </SelectParameters> 

        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Birthdate" Type="String" />
            <asp:Parameter Name="Address1" Type="String" />
            <asp:Parameter Name="Address2" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Zip" Type="Double" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="PhoneNumber1" Type="String" />
            <asp:Parameter Name="PrimaryEmail" Type="String" />
            <asp:Parameter Name="UserID" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT SLPL_Materials.MatID, SLPL_Materials.Type, SLPL_Materials.Title, SLPL_Materials.Author, SLPL_Materials.ISBN, SLPL_Rentals.DateDue FROM SLPL_Rentals INNER JOIN SLPL_Materials ON SLPL_Rentals.MatID = SLPL_Materials.MatID INNER JOIN aspnet_Users ON SLPL_Rentals.UserName = aspnet_Users.UserName WHERE (aspnet_Users.UserID = @UserID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="UserID" QueryStringField="UserID" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <asp:Label ID="lbl_DeletedUser" runat="server" Text=""></asp:Label>
    <br />

</asp:Content>


