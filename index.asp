<!-- #include file="connect.asp" -->

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        <title>CRUD Example</title>
    </head>
    <body>
        <!-- #include file="header.asp" -->

        <div class="container">
            <div class="d-flex bd-highlight mb-3">
                <div class="me-auto p-2 bd-highlight"><h2>Danh sach nhan vien</h2></div>
                <div class="p-2 bd-highlight">
                    <a href="/addedit.asp" class="btn btn-primary">Create</a>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-dark">
                    <thead>
                        <tr>
                            <th scope="col">Mã Nhân Viên</th>
                            <th scope="col">Họ Tên Nhân Viên</th>
                            <th scope="col">Quê Quán</th>
                            <th scope="col">Thao Tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            connDB.Open()
                            Dim Result
                            set Result = connDB.execute("SELECT * FROM NHANVIEN")                            
                            do while not Result.EOF
                        %>
                                <tr>
                                    <td><%=Result("MaNV")%></td>
                                    <td><%=Result("HoTenNV")%></td>
                                    <td><%=Result("QueQuan")%></td>
                                    <td>
                                        <a href="addedit.asp?id=<%=Result("MaNV")%>" class="btn btn-secondary">Edit</a>
                                        <a data-href="delete.asp?id=<%=Result("MaNV")%>" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#confirm-delete" title="Delete">Delete</a>
                                    </td>
                                </tr>
                        <%
                                Result.MoveNext
                            loop
                            Result.Close()
                            connDB.Close()
                        %>
                    </tbody>
                </table>
            </div>

           
            <div class="modal" tabindex="-1" id="confirm-delete">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Delete Confirmation</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p>Are you sure?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <a class="btn btn-danger btn-delete">Delete</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
        <script>
            $(function()
            {
                $('#confirm-delete').on('show.bs.modal', function(e){
                    $(this).find('.btn-delete').attr('href', $(e.relatedTarget).data('href'));
                });
            });
        </script>
    </body>
</html>