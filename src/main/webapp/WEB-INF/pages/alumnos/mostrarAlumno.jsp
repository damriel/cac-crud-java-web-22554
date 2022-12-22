<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Mostrar a ${alumnoAMostrar.nombreCompleto}" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />

<section class="container py-3">
    <div class="row">
        <h1 class="h3">Mostrando alumno</h1>
        <p class="lead">Estás viendo a ${alumnoAMostrar.nombreCompleto}.</p>
    </div>
    <div class="container px-4 mt-3">
        <div class="row align-items-center justify-content-center">
            <div class="col-sm-7 col-md-6 col-lg-4" >
                <div class="card h-100">
                    <jsp:include page="partes/dataCardAlumno.jsp">
                        <jsp:param name="fotoAlumno" value="${alumnoAMostrar.foto}" />
                        <jsp:param name="nombreCompletoAlumno" value="${alumnoAMostrar.nombreCompleto}" />
                    </jsp:include>
                </div>
            </div>
            <div class="col-sm-5 col-md-6 col-lg-4">
                <form action="${pageContext.request.contextPath}/app?accion=show&id=${alumnoAMostrar.id}"
                      method="post" class="was-validated border p-1 rounded-3 bg-light">
                    <div class="row">
                        <div class="col-12 p-3">
                            <div>
                                <label class="fw-bold"><span class="fw-bolder">Nombre/s: </span>${alumnoAMostrar.nombre}</label>
                                <br><br>
                                <label class="fw-bold"><span class="fw-bolder">Apellido/s: </span>${alumnoAMostrar.apellido}</label>
                                <br><br>
                                <label class="fw-bold"><span class="fw-bolder">Edad: </span>${alumnoAMostrar.edad}</label>
                                <br><br>
                                <label class="fw-bold"><span class="fw-bolder">Fecha de Nacimiento: </span>${alumnoAMostrar.fechaNacimiento}</label>
                                <br><br>
                                <label class="fw-bold"><span class="fw-bolder">Mail: </span>${alumnoAMostrar.mail}</label>
                            </div>
                            <br>
                            <div class="container text-center">
                                <a href="${pageContext.request.contextPath}/app" class="btn btn-success mb-3"><i class="bi bi-arrow-return-left"></i> Volver al listado</a>
                                <div class="row justify-content-center">
                                    <div class="col-4">
                                        <a href="${pageContext.request.contextPath}/app?accion=edit&id=${alumnoAMostrar.id}" class="btn bg-warning w-100"><i class="bi bi-pencil-square"></i> Editar</a>
                                    </div>
                                    <div class="col-4">
                                        <a href="${pageContext.request.contextPath}/app?accion=remove&id=${alumnoAMostrar.id}" class="btn bg-danger text-light w-100"><i class="bi bi-trash3"></i> Borrar</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>