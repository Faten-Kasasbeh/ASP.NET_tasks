<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task29-12.aspx.cs" Inherits="State_Managment.task29_12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"/>
    
    <script >src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"/>
    </script>
    <title></title>
</head>
<body typeof="password">
    <form id="form1" runat="server">
       <section class="vh-100" style="background-color: #508bfc;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <h3 class="mb-5">Sign in</h3>

            <div class="form-outline mb-4">
              <input type="email"  class="form-control form-control-lg" runat="server" id="email"/>
              <label class="form-label" for="typeEmailX-2">Email</label>
            </div>

            <div class="form-outline mb-4">
              <input type="text"  runat="server" class="form-control form-control-lg" id="password"/>
              <label class="form-label" for="typePasswordX-2">Password</label>
            </div>

            <!-- Checkbox -->
            <div class="form-check d-flex justify-content-start mb-4">
                <asp:CheckBox ID="CheckBox2" CssClass="form-check-input" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" />
              <label class="form-check-label" > Remember password </label>
            </div>

              <asp:Button ID="Button1" CssClass="btn btn-primary btn-lg btn-block" runat="server" Text="Button" OnClick="Button1_Click" />

           
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
