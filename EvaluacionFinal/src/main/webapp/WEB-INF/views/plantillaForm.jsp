    <div class="contenedor-crear-capacitacion">
        <form method="post" action="crearCapacitacionProcesar" class="cmxform" id="capForm">
            <h2 id="titulo-crearcapacitacion">Crear Capacitacíon</h2>
            <label id="label-crearcapacitacion">Id Capacitación</label>
            <input type="text" name="idcapacitacion" id="form-capacitacion" value='<c:out value="${nid}"/>'/>
            <label id="label-crearcapacitacion">Fecha de Capacitación</label>
            <input type="date" name="capfecha" id="form-capacitacion"/>
            <label id="label-crearcapacitacion">Hora de Capacitación</label>
            <input type="time" name="caphora" id="form-capacitacion"/>
            <label id="label-crearcapacitacion">Lugar de Capacitación</label>
            <input type="text" name="caplugar" id="form-capacitacion"/>
            <label id="label-crearcapacitacion">Duración de Capacitación en minutos</label>
            <input type="text" name="capduracion" id="form-capacitacion"/>
            <label id="label-crearcapacitacion">Seleccione Rut de Cliente</label>
            <select name="cliente_rutcliente" id="form-capacitacion">
                <c:forEach items="${lcli}" var="lc">
                    <option value='<c:out value="${lc.getRutCliente()}" />'>
                        <c:out value="${lc.getRutCliente()}" />
                    </option>
                </c:forEach>
            </select>
            <input type="submit" value="Ingresar Capacitación" id="boton-crearcapacitacion">
        </form>
    </div>