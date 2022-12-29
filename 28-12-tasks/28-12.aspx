<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="28-12.aspx.cs" Inherits="masterpageValidation._28_12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 
      <script type="text/javascript">
          function successalert() {
              swal({
                  title: 'Congratulations!',
                  text: 'Your comment has been succesfully sent',
                  type: 'success'
              });
        }
  </script>
  
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <link href="Content/bootstrap.css" rel="stylesheet" />
</head>            
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
     
                  <asp:UpdatePanel ID="UpdatePanel1" runat="server"> 
                       <ContentTemplate>
                             <div style="background-color: #eee;">
  <div class="container my-5 py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-10 col-xl-8">
        <div class="card">
          
          <div class="card-footer py-3 border-0" style="background-color: #f8f9fa;">
            <div class="d-flex flex-start w-100">
             
              <div class="form-outline w-100">
                        <asp:TextBox class="form-control" ID="txt" runat="server" TextMode="MultiLine" ></asp:TextBox>

                <label class="form-label" for="textAreaExample">Message</label>
              </div>
            </div>
            <div class="float-end mt-2 pt-1">
                <asp:Button ID="Button1" CssClass="btn btn-primary btn-sm" runat="server" Text="Post comment" OnClick="Button1_Click" OnClientClick=""/>
              <button type="button" class="btn btn-outline-primary btn-sm">Cancel</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
                </ContentTemplate>  

                  </asp:UpdatePanel>
    </form>
</body>
</html>
