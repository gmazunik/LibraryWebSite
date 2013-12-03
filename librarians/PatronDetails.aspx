<%@ Page Title="" Language="VB" MasterPageFile="~/library.master" AutoEventWireup="false" CodeFile="PatronDetails.aspx.vb" Inherits="librarians_CustomerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>View, Edit, & Delete Patron Details</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            RoleName:
            <asp:TextBox ID="RoleNameTextBox" runat="server" Text='<%# Bind("RoleName") %>' />
            <br />
            UserName:
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Birthdate:
            <asp:TextBox ID="BirthdateTextBox" runat="server" Text='<%# Bind("Birthdate") %>' />
            <br />
            Address1:
            <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' />
            <br />
            Address2:
            <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            Zip:
            <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
            <br />
            PhoneNumber:
            <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
            <br />
            PhoneNumber1:
            <asp:TextBox ID="PhoneNumber1TextBox" runat="server" Text='<%# Bind("PhoneNumber1") %>' />
            <br />
            PrimaryEmail:
            <asp:TextBox ID="PrimaryEmailTextBox" runat="server" Text='<%# Bind("PrimaryEmail") %>' />
            <br />
            UserID:
            <asp:Label ID="UserIDLabel1" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <tr>
            <td>Role:</td>
            <asp:TextBox ID="RoleNameTextBox" runat="server" Text='<%# Bind("RoleName") %>' />
            </ tr><tr>
            <td>Username:</td>
            <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
            </ tr><tr>
            <td>First Name:</td>
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            </ tr><tr>
            <td>Last Name:</td>
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            </ tr><tr>
            <td>Birthdate:</td>
            <asp:TextBox ID="BirthdateTextBox" runat="server" Text='<%# Bind("Birthdate") %>' />
            </ tr><tr>
            <td>Address Line 1:</td>
            <asp:TextBox ID="Address1TextBox" runat="server" Text='<%# Bind("Address1") %>' />
            </ tr><tr>
            <td>Address Line 2:</td>
            <asp:TextBox ID="Address2TextBox" runat="server" Text='<%# Bind("Address2") %>' />
            </ tr><tr>
            <td>City:</td>
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            </ tr><tr>
            <td>State:</td>
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            </ tr><tr>
            <td>Zip:</td>
            <asp:TextBox ID="ZipTextBox" runat="server" Text='<%# Bind("Zip") %>' />
            </ tr><tr>
            <td>Phone Number:</td>
            <asp:TextBox ID="PhoneNumberTextBox" runat="server" Text='<%# Bind("PhoneNumber") %>' />
            </ tr><tr>
            <td>Alternate Phone:</td>
            <asp:TextBox ID="PhoneNumber1TextBox" runat="server" Text='<%# Bind("PhoneNumber1") %>' />
            </ tr><tr>
            <td>Primary Email:</td>
            <asp:TextBox ID="PrimaryEmailTextBox" runat="server" Text='<%# Bind("PrimaryEmail") %>' />
            </ tr><tr>
            <td>UserID:</td>
            <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
            </ tr>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate><table>
            RoleName:
            <asp:Label ID="RoleNameLabel" runat="server" Text='<%# Bind("RoleName") %>' />
            <br />
            UserName:
            <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
            <br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Birthdate:
            <asp:Label ID="BirthdateLabel" runat="server" Text='<%# Bind("Birthdate") %>' />
            <br />
            Address1:
            <asp:Label ID="Address1Label" runat="server" Text='<%# Bind("Address1") %>' />
            <br />
            Address2:
            <asp:Label ID="Address2Label" runat="server" Text='<%# Bind("Address2") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
            <br />
            Zip:
            <asp:Label ID="ZipLabel" runat="server" Text='<%# Bind("Zip") %>' />
            <br />
            PhoneNumber:
            <asp:Label ID="PhoneNumberLabel" runat="server" Text='<%# Bind("PhoneNumber") %>' />
            <br />
            PhoneNumber1:
            <asp:Label ID="PhoneNumber1Label" runat="server" Text='<%# Bind("PhoneNumber1") %>' />
            <br />
            PrimaryEmail:
            <asp:Label ID="PrimaryEmailLabel" runat="server" Text='<%# Bind("PrimaryEmail") %>' />
            <br />
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />

        </table>

            <asp:Button ID="EditButton" runat="server" CausesValidation="false" CommandName="Edit" Text="Edit"/>
            &nbsp;
            <asp:Button ID="DeleteButton" runat="server" CausesValidation="false" CommandName="Delete" Text="Delete" 
                onclick="DeleteButton_Click" onClientClick="return confirm ('Are you sure you want to delete this patron record?')"/>

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT aspnet_Roles.RoleName, aspnet_Users.UserName, SLPL_UserProfile.FirstName, SLPL_UserProfile.LastName, SLPL_UserProfile.Birthdate, SLPL_UserProfile.Address1, SLPL_UserProfile.Address2, SLPL_UserProfile.City, SLPL_UserProfile.State, SLPL_UserProfile.Zip, SLPL_UserProfile.PhoneNumber, SLPL_UserProfile.PhoneNumber1, SLPL_UserProfile.PrimaryEmail, SLPL_UserProfile.UserID FROM SLPL_UserProfile INNER JOIN aspnet_Users ON SLPL_UserProfile.UserID = aspnet_Users.UserId INNER JOIN aspnet_Roles ON aspnet_Users.ApplicationId = aspnet_Roles.ApplicationId"></asp:SqlDataSource>
</asp:Content>

